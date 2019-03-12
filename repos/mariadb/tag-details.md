<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.38`](#mariadb10038)
-	[`mariadb:10.0.38-xenial`](#mariadb10038-xenial)
-	[`mariadb:10.0-xenial`](#mariadb100-xenial)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.38`](#mariadb10138)
-	[`mariadb:10.1.38-bionic`](#mariadb10138-bionic)
-	[`mariadb:10.1-bionic`](#mariadb101-bionic)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.22`](#mariadb10222)
-	[`mariadb:10.2.22-bionic`](#mariadb10222-bionic)
-	[`mariadb:10.2-bionic`](#mariadb102-bionic)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.13`](#mariadb10313)
-	[`mariadb:10.3.13-bionic`](#mariadb10313-bionic)
-	[`mariadb:10.3-bionic`](#mariadb103-bionic)
-	[`mariadb:10.4`](#mariadb104)
-	[`mariadb:10.4.3`](#mariadb1043)
-	[`mariadb:10.4.3-bionic`](#mariadb1043-bionic)
-	[`mariadb:10.4-bionic`](#mariadb104-bionic)
-	[`mariadb:10-bionic`](#mariadb10-bionic)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.63`](#mariadb5563)
-	[`mariadb:5.5.63-trusty`](#mariadb5563-trusty)
-	[`mariadb:5.5-trusty`](#mariadb55-trusty)
-	[`mariadb:5-trusty`](#mariadb5-trusty)
-	[`mariadb:bionic`](#mariadbbionic)
-	[`mariadb:latest`](#mariadblatest)
-	[`mariadb:rc`](#mariadbrc)
-	[`mariadb:rc-bionic`](#mariadbrc-bionic)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:1b7c3efcf1e0e4d80966d1d4f3fe118377fd91748ab1b0279c0ee7de5889ed98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:83df80b78b9f2f89954ebfc689c3f1e9605e5dfe989f7650063fbc9ff442030d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116191088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d1babacfde00ca7fbd579c835b8a25aeac299082ebddc2b5732ecfef5db586`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:03:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:03:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:03:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:03:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:28 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:03:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 01:03:30 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:04:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:04:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:04:13 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:04:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:04:15 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:04:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2da1f92148c3f1a031a3ffb738cc0c49d3ee7a6efa23ae0c711da5b4673577`  
		Last Modified: Tue, 12 Mar 2019 01:07:12 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7e486260cf95d099719e13cb95f3d8b7c17d517a0bbb2514415933a32076c5`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78de479f3d7d8e4eb3460b701708b3e4c74db41f1722ebb6f91d0f4915adb664`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 840.3 KB (840275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83886c4cd6309a2938d2e095d57aa08bed89a4f5ac785372a54d5a0b445c8d04`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5345ea198e8518d26d6ba28a62a2966949714247f5dae024dd212589431deaca`  
		Last Modified: Tue, 12 Mar 2019 01:07:13 GMT  
		Size: 7.3 MB (7321540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e934f6955858411f064e9707cc45d2959a5d9d054595baee55876b8d8667e`  
		Last Modified: Tue, 12 Mar 2019 01:07:09 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a3ff3dd8d96fbceb073f95dfeb4f2046d1942324b21b175df517c0469003ea`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6629e7f247d400234df1c8e1c83f4a87054db48ba5b6cb0cae811c6533960449`  
		Last Modified: Tue, 12 Mar 2019 01:07:24 GMT  
		Size: 64.4 MB (64434008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa772768c8c4bfedbb87b85e7d6294da799601e87a425c37c99a576ea9c95db`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175df937ba8ef9ab206f52f0856743e08587463b0499319d32daa254ed075e8c`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cf7775bb7611f1c406f72442fa571cd55629e28c17d017b5355ca129f6b61dd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99198323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84eda8e483b8cff40e4e5ae502190c0ee980afa38d3ab8c0c68fb3a58dcb35a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 11:15:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 11:15:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:15:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:16:08 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:16:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:17:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:17:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:17:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 11:40:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 11:43:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 11:43:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:32 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c910bf8ebe4b6399bc19d24343495e6966595fedd4d16b48405dbbc96149a`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee7c0d4494e4969ea1169860964199b2d8f07e12d5893918d39a19f0d78da7b`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ab4e94d4ecccbabe8bcbd809da54dee04cf1a71e9ccf8ba17044ad1674402e`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 807.3 KB (807317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b43a13aace689aa2b429e8c85e7ec007f71e78925500aba9aec9d1e10724d`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841290f7f76b30a9919a2c482801239810e0c9c13e57fa61403d537f2314f5eb`  
		Last Modified: Fri, 25 Jan 2019 00:32:49 GMT  
		Size: 6.4 MB (6400812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a6b9723043faba68a170083be29c8cb4e2f880bbbcaa2a6553a18d005f69c1`  
		Last Modified: Fri, 25 Jan 2019 00:32:38 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e615233ec6c703dd1c55b6f201aac2c52b7dd7199105b36b9b5c358f3fb074`  
		Last Modified: Wed, 06 Feb 2019 11:44:13 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953ccc2146d7a986644924ebc9b51f00d248a725a83c0e4ecf6ad98d1b40ab8a`  
		Last Modified: Wed, 06 Feb 2019 11:44:33 GMT  
		Size: 52.4 MB (52399383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fa29795208a8379e887b6954efd477d18446841147cb382696c051d688111e`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983854de3feb5df9477f5d1f0279e67e1fb3983491f952b6dac461e82d636850`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; 386

```console
$ docker pull mariadb@sha256:326b0063454275fef0410d2947e3e5a6785f617edd9d30b9c79131694de1a590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abaa2de2528171aa65323e3e389c9ce5a56baef8240f61809b68305847df4a2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 12:56:18 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 12:56:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:57:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:57:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:00 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:01 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e03cbf5c1c92af0c62ad6bea32f00f7459285424966f49b764e1ef74b3652e`  
		Last Modified: Wed, 06 Feb 2019 12:58:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a0c7e94d375bb50dcf0480a27bdc4772da9b041fcb1e6db93f3df4b3a981e8`  
		Last Modified: Wed, 06 Feb 2019 12:58:45 GMT  
		Size: 62.8 MB (62772130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540120a96ee8605326a991283d17093d0ea26026769e2e36d385b344ebf0d80c`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9a8b30512cf1b37e4c66c6b8edfb61bf8cb49ecd0adefd60cedf5a1110166e`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4e78c07fc4bb5020f67d0ee414ddb1616fe06149ddbb63c9997c28c72fca9e92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109500947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087fbab81cac2b308c5aa313c0a81bc8b8789ac9e67fffc1357e532e5582ecf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:27:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:27:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:27:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:28:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:28:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:30:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:30:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:30:36 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 09:30:42 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 09:30:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:33:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:33:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:33:14 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:33:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:33:32 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:33:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c94656635bbd6fb53ffe87d65bb2042e84115aadef43932742a67b549e36b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed7f634b74abb73f7894530c8dee8d1c88007289bf341ef8b5fd7fde313b26`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712115abda81389a8e6736a6054c6662b68c817253b786c5f97d89a45b2c5bc7`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 808.9 KB (808892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac202c7b61427e3111d9af379d3e9d281165b6ee891d2e66654cf849fa296c0`  
		Last Modified: Tue, 12 Mar 2019 09:44:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f924c1b5d84f4b5253f77543f98f66a813bf65e666c56c5b56aca500d504b74b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 7.2 MB (7211115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808ca656026df65ae6653ca4c76043ff94b934ca5b2cea5d850f14aa1ad995e4`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd611830da1df1581f55cc270ec8c47eb445859cc77f4996ea5c406af4a521a3`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722e491bcd41a656681f9d323dfaa2e7c4b9ab05ebaf61ecbb16e2d707dfd53`  
		Last Modified: Tue, 12 Mar 2019 09:44:39 GMT  
		Size: 55.7 MB (55672128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fcaf9c6edc8ecb124cfe1a7d396285185bf2085205264be24708757a6734db`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce1d68dbe8b776b74568fe5d808cce1d927fd9d4a8fe8c1ddecc051be774df`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.38`

```console
$ docker pull mariadb@sha256:1b7c3efcf1e0e4d80966d1d4f3fe118377fd91748ab1b0279c0ee7de5889ed98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.38` - linux; amd64

```console
$ docker pull mariadb@sha256:83df80b78b9f2f89954ebfc689c3f1e9605e5dfe989f7650063fbc9ff442030d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116191088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d1babacfde00ca7fbd579c835b8a25aeac299082ebddc2b5732ecfef5db586`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:03:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:03:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:03:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:03:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:28 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:03:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 01:03:30 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:04:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:04:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:04:13 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:04:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:04:15 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:04:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2da1f92148c3f1a031a3ffb738cc0c49d3ee7a6efa23ae0c711da5b4673577`  
		Last Modified: Tue, 12 Mar 2019 01:07:12 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7e486260cf95d099719e13cb95f3d8b7c17d517a0bbb2514415933a32076c5`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78de479f3d7d8e4eb3460b701708b3e4c74db41f1722ebb6f91d0f4915adb664`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 840.3 KB (840275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83886c4cd6309a2938d2e095d57aa08bed89a4f5ac785372a54d5a0b445c8d04`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5345ea198e8518d26d6ba28a62a2966949714247f5dae024dd212589431deaca`  
		Last Modified: Tue, 12 Mar 2019 01:07:13 GMT  
		Size: 7.3 MB (7321540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e934f6955858411f064e9707cc45d2959a5d9d054595baee55876b8d8667e`  
		Last Modified: Tue, 12 Mar 2019 01:07:09 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a3ff3dd8d96fbceb073f95dfeb4f2046d1942324b21b175df517c0469003ea`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6629e7f247d400234df1c8e1c83f4a87054db48ba5b6cb0cae811c6533960449`  
		Last Modified: Tue, 12 Mar 2019 01:07:24 GMT  
		Size: 64.4 MB (64434008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa772768c8c4bfedbb87b85e7d6294da799601e87a425c37c99a576ea9c95db`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175df937ba8ef9ab206f52f0856743e08587463b0499319d32daa254ed075e8c`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cf7775bb7611f1c406f72442fa571cd55629e28c17d017b5355ca129f6b61dd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99198323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84eda8e483b8cff40e4e5ae502190c0ee980afa38d3ab8c0c68fb3a58dcb35a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 11:15:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 11:15:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:15:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:16:08 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:16:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:17:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:17:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:17:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 11:40:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 11:43:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 11:43:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:32 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c910bf8ebe4b6399bc19d24343495e6966595fedd4d16b48405dbbc96149a`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee7c0d4494e4969ea1169860964199b2d8f07e12d5893918d39a19f0d78da7b`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ab4e94d4ecccbabe8bcbd809da54dee04cf1a71e9ccf8ba17044ad1674402e`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 807.3 KB (807317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b43a13aace689aa2b429e8c85e7ec007f71e78925500aba9aec9d1e10724d`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841290f7f76b30a9919a2c482801239810e0c9c13e57fa61403d537f2314f5eb`  
		Last Modified: Fri, 25 Jan 2019 00:32:49 GMT  
		Size: 6.4 MB (6400812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a6b9723043faba68a170083be29c8cb4e2f880bbbcaa2a6553a18d005f69c1`  
		Last Modified: Fri, 25 Jan 2019 00:32:38 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e615233ec6c703dd1c55b6f201aac2c52b7dd7199105b36b9b5c358f3fb074`  
		Last Modified: Wed, 06 Feb 2019 11:44:13 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953ccc2146d7a986644924ebc9b51f00d248a725a83c0e4ecf6ad98d1b40ab8a`  
		Last Modified: Wed, 06 Feb 2019 11:44:33 GMT  
		Size: 52.4 MB (52399383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fa29795208a8379e887b6954efd477d18446841147cb382696c051d688111e`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983854de3feb5df9477f5d1f0279e67e1fb3983491f952b6dac461e82d636850`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; 386

```console
$ docker pull mariadb@sha256:326b0063454275fef0410d2947e3e5a6785f617edd9d30b9c79131694de1a590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abaa2de2528171aa65323e3e389c9ce5a56baef8240f61809b68305847df4a2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 12:56:18 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 12:56:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:57:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:57:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:00 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:01 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e03cbf5c1c92af0c62ad6bea32f00f7459285424966f49b764e1ef74b3652e`  
		Last Modified: Wed, 06 Feb 2019 12:58:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a0c7e94d375bb50dcf0480a27bdc4772da9b041fcb1e6db93f3df4b3a981e8`  
		Last Modified: Wed, 06 Feb 2019 12:58:45 GMT  
		Size: 62.8 MB (62772130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540120a96ee8605326a991283d17093d0ea26026769e2e36d385b344ebf0d80c`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9a8b30512cf1b37e4c66c6b8edfb61bf8cb49ecd0adefd60cedf5a1110166e`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4e78c07fc4bb5020f67d0ee414ddb1616fe06149ddbb63c9997c28c72fca9e92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109500947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087fbab81cac2b308c5aa313c0a81bc8b8789ac9e67fffc1357e532e5582ecf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:27:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:27:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:27:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:28:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:28:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:30:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:30:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:30:36 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 09:30:42 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 09:30:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:33:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:33:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:33:14 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:33:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:33:32 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:33:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c94656635bbd6fb53ffe87d65bb2042e84115aadef43932742a67b549e36b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed7f634b74abb73f7894530c8dee8d1c88007289bf341ef8b5fd7fde313b26`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712115abda81389a8e6736a6054c6662b68c817253b786c5f97d89a45b2c5bc7`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 808.9 KB (808892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac202c7b61427e3111d9af379d3e9d281165b6ee891d2e66654cf849fa296c0`  
		Last Modified: Tue, 12 Mar 2019 09:44:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f924c1b5d84f4b5253f77543f98f66a813bf65e666c56c5b56aca500d504b74b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 7.2 MB (7211115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808ca656026df65ae6653ca4c76043ff94b934ca5b2cea5d850f14aa1ad995e4`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd611830da1df1581f55cc270ec8c47eb445859cc77f4996ea5c406af4a521a3`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722e491bcd41a656681f9d323dfaa2e7c4b9ab05ebaf61ecbb16e2d707dfd53`  
		Last Modified: Tue, 12 Mar 2019 09:44:39 GMT  
		Size: 55.7 MB (55672128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fcaf9c6edc8ecb124cfe1a7d396285185bf2085205264be24708757a6734db`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce1d68dbe8b776b74568fe5d808cce1d927fd9d4a8fe8c1ddecc051be774df`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.38-xenial`

```console
$ docker pull mariadb@sha256:1b7c3efcf1e0e4d80966d1d4f3fe118377fd91748ab1b0279c0ee7de5889ed98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0.38-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:83df80b78b9f2f89954ebfc689c3f1e9605e5dfe989f7650063fbc9ff442030d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116191088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d1babacfde00ca7fbd579c835b8a25aeac299082ebddc2b5732ecfef5db586`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:03:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:03:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:03:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:03:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:28 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:03:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 01:03:30 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:04:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:04:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:04:13 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:04:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:04:15 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:04:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2da1f92148c3f1a031a3ffb738cc0c49d3ee7a6efa23ae0c711da5b4673577`  
		Last Modified: Tue, 12 Mar 2019 01:07:12 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7e486260cf95d099719e13cb95f3d8b7c17d517a0bbb2514415933a32076c5`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78de479f3d7d8e4eb3460b701708b3e4c74db41f1722ebb6f91d0f4915adb664`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 840.3 KB (840275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83886c4cd6309a2938d2e095d57aa08bed89a4f5ac785372a54d5a0b445c8d04`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5345ea198e8518d26d6ba28a62a2966949714247f5dae024dd212589431deaca`  
		Last Modified: Tue, 12 Mar 2019 01:07:13 GMT  
		Size: 7.3 MB (7321540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e934f6955858411f064e9707cc45d2959a5d9d054595baee55876b8d8667e`  
		Last Modified: Tue, 12 Mar 2019 01:07:09 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a3ff3dd8d96fbceb073f95dfeb4f2046d1942324b21b175df517c0469003ea`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6629e7f247d400234df1c8e1c83f4a87054db48ba5b6cb0cae811c6533960449`  
		Last Modified: Tue, 12 Mar 2019 01:07:24 GMT  
		Size: 64.4 MB (64434008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa772768c8c4bfedbb87b85e7d6294da799601e87a425c37c99a576ea9c95db`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175df937ba8ef9ab206f52f0856743e08587463b0499319d32daa254ed075e8c`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cf7775bb7611f1c406f72442fa571cd55629e28c17d017b5355ca129f6b61dd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99198323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84eda8e483b8cff40e4e5ae502190c0ee980afa38d3ab8c0c68fb3a58dcb35a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 11:15:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 11:15:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:15:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:16:08 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:16:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:17:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:17:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:17:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 11:40:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 11:43:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 11:43:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:32 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c910bf8ebe4b6399bc19d24343495e6966595fedd4d16b48405dbbc96149a`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee7c0d4494e4969ea1169860964199b2d8f07e12d5893918d39a19f0d78da7b`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ab4e94d4ecccbabe8bcbd809da54dee04cf1a71e9ccf8ba17044ad1674402e`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 807.3 KB (807317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b43a13aace689aa2b429e8c85e7ec007f71e78925500aba9aec9d1e10724d`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841290f7f76b30a9919a2c482801239810e0c9c13e57fa61403d537f2314f5eb`  
		Last Modified: Fri, 25 Jan 2019 00:32:49 GMT  
		Size: 6.4 MB (6400812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a6b9723043faba68a170083be29c8cb4e2f880bbbcaa2a6553a18d005f69c1`  
		Last Modified: Fri, 25 Jan 2019 00:32:38 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e615233ec6c703dd1c55b6f201aac2c52b7dd7199105b36b9b5c358f3fb074`  
		Last Modified: Wed, 06 Feb 2019 11:44:13 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953ccc2146d7a986644924ebc9b51f00d248a725a83c0e4ecf6ad98d1b40ab8a`  
		Last Modified: Wed, 06 Feb 2019 11:44:33 GMT  
		Size: 52.4 MB (52399383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fa29795208a8379e887b6954efd477d18446841147cb382696c051d688111e`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983854de3feb5df9477f5d1f0279e67e1fb3983491f952b6dac461e82d636850`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:326b0063454275fef0410d2947e3e5a6785f617edd9d30b9c79131694de1a590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abaa2de2528171aa65323e3e389c9ce5a56baef8240f61809b68305847df4a2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 12:56:18 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 12:56:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:57:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:57:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:00 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:01 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e03cbf5c1c92af0c62ad6bea32f00f7459285424966f49b764e1ef74b3652e`  
		Last Modified: Wed, 06 Feb 2019 12:58:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a0c7e94d375bb50dcf0480a27bdc4772da9b041fcb1e6db93f3df4b3a981e8`  
		Last Modified: Wed, 06 Feb 2019 12:58:45 GMT  
		Size: 62.8 MB (62772130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540120a96ee8605326a991283d17093d0ea26026769e2e36d385b344ebf0d80c`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9a8b30512cf1b37e4c66c6b8edfb61bf8cb49ecd0adefd60cedf5a1110166e`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0.38-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4e78c07fc4bb5020f67d0ee414ddb1616fe06149ddbb63c9997c28c72fca9e92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109500947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087fbab81cac2b308c5aa313c0a81bc8b8789ac9e67fffc1357e532e5582ecf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:27:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:27:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:27:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:28:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:28:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:30:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:30:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:30:36 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 09:30:42 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 09:30:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:33:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:33:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:33:14 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:33:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:33:32 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:33:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c94656635bbd6fb53ffe87d65bb2042e84115aadef43932742a67b549e36b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed7f634b74abb73f7894530c8dee8d1c88007289bf341ef8b5fd7fde313b26`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712115abda81389a8e6736a6054c6662b68c817253b786c5f97d89a45b2c5bc7`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 808.9 KB (808892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac202c7b61427e3111d9af379d3e9d281165b6ee891d2e66654cf849fa296c0`  
		Last Modified: Tue, 12 Mar 2019 09:44:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f924c1b5d84f4b5253f77543f98f66a813bf65e666c56c5b56aca500d504b74b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 7.2 MB (7211115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808ca656026df65ae6653ca4c76043ff94b934ca5b2cea5d850f14aa1ad995e4`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd611830da1df1581f55cc270ec8c47eb445859cc77f4996ea5c406af4a521a3`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722e491bcd41a656681f9d323dfaa2e7c4b9ab05ebaf61ecbb16e2d707dfd53`  
		Last Modified: Tue, 12 Mar 2019 09:44:39 GMT  
		Size: 55.7 MB (55672128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fcaf9c6edc8ecb124cfe1a7d396285185bf2085205264be24708757a6734db`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce1d68dbe8b776b74568fe5d808cce1d927fd9d4a8fe8c1ddecc051be774df`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-xenial`

```console
$ docker pull mariadb@sha256:1b7c3efcf1e0e4d80966d1d4f3fe118377fd91748ab1b0279c0ee7de5889ed98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `mariadb:10.0-xenial` - linux; amd64

```console
$ docker pull mariadb@sha256:83df80b78b9f2f89954ebfc689c3f1e9605e5dfe989f7650063fbc9ff442030d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.2 MB (116191088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d1babacfde00ca7fbd579c835b8a25aeac299082ebddc2b5732ecfef5db586`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:21:09 GMT
ADD file:c02de920036d851cccaedd7f9ed93d48c960ada8e7e839bd2e79ab7b0d7a12d6 in / 
# Tue, 12 Mar 2019 00:21:10 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:21:11 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:21:11 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:21:12 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:03:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:03:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:04 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:03:14 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:03:15 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:03:28 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:03:29 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 01:03:30 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 01:03:30 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:04:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:04:13 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:04:13 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:04:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:04:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:04:15 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:04:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:34667c7e4631207d64c99e798aafe8ecaedcbda89fb9166203525235cc4d72b9`  
		Last Modified: Fri, 22 Feb 2019 14:20:02 GMT  
		Size: 43.6 MB (43561487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18d76a881a47e51f4210b97ebeda458767aa6a493b244b4b40bfe0b1ddd2c42`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:119c7358fbfc2897ed63529451df83614c694a8abbd9e960045c1b0b2dc8a4a1`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aaf13f3eff07aa25f73813096bd588e6408b514288651402aa3d0357509be7a`  
		Last Modified: Tue, 12 Mar 2019 00:22:19 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af2da1f92148c3f1a031a3ffb738cc0c49d3ee7a6efa23ae0c711da5b4673577`  
		Last Modified: Tue, 12 Mar 2019 01:07:12 GMT  
		Size: 2.0 KB (1992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c7e486260cf95d099719e13cb95f3d8b7c17d517a0bbb2514415933a32076c5`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78de479f3d7d8e4eb3460b701708b3e4c74db41f1722ebb6f91d0f4915adb664`  
		Last Modified: Tue, 12 Mar 2019 01:07:11 GMT  
		Size: 840.3 KB (840275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83886c4cd6309a2938d2e095d57aa08bed89a4f5ac785372a54d5a0b445c8d04`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5345ea198e8518d26d6ba28a62a2966949714247f5dae024dd212589431deaca`  
		Last Modified: Tue, 12 Mar 2019 01:07:13 GMT  
		Size: 7.3 MB (7321540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f31e934f6955858411f064e9707cc45d2959a5d9d054595baee55876b8d8667e`  
		Last Modified: Tue, 12 Mar 2019 01:07:09 GMT  
		Size: 26.6 KB (26552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97a3ff3dd8d96fbceb073f95dfeb4f2046d1942324b21b175df517c0469003ea`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6629e7f247d400234df1c8e1c83f4a87054db48ba5b6cb0cae811c6533960449`  
		Last Modified: Tue, 12 Mar 2019 01:07:24 GMT  
		Size: 64.4 MB (64434008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7aa772768c8c4bfedbb87b85e7d6294da799601e87a425c37c99a576ea9c95db`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:175df937ba8ef9ab206f52f0856743e08587463b0499319d32daa254ed075e8c`  
		Last Modified: Tue, 12 Mar 2019 01:07:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:cf7775bb7611f1c406f72442fa571cd55629e28c17d017b5355ca129f6b61dd8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.2 MB (99198323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84eda8e483b8cff40e4e5ae502190c0ee980afa38d3ab8c0c68fb3a58dcb35a5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 10:08:56 GMT
ADD file:2748dad7410d2963c4d07521fe9d96832220c1c82b50dc0558489fe47af8528c in / 
# Wed, 23 Jan 2019 10:09:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 10:09:02 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:09:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 10:09:05 GMT
CMD ["/bin/bash"]
# Wed, 23 Jan 2019 11:15:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 11:15:20 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:15:22 GMT
ENV GOSU_VERSION=1.10
# Wed, 23 Jan 2019 11:16:08 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 11:16:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 11:17:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 11:17:31 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 23 Jan 2019 11:17:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 23 Jan 2019 11:17:38 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 11:40:49 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 11:40:53 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 11:43:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 11:43:29 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:32 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3589363d0c5c7e357442b19cf74bcf437c4be71aa09601715b36178d5cee4062`  
		Last Modified: Wed, 23 Jan 2019 10:11:35 GMT  
		Size: 39.6 MB (39558203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cc63d25106ea8d2808ce328a6c43870e467250ecb93fc5d2d7bb0303035ed20`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:647f3c718ef03d58fea6fa02938ab84f8d90c261e75e2709623d4e9c41b8653c`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 468.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c230e6415b4d91f83140d441d457b9917fc16d17f535ac57870584ecb0fb21a3`  
		Last Modified: Wed, 23 Jan 2019 10:11:21 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:191c910bf8ebe4b6399bc19d24343495e6966595fedd4d16b48405dbbc96149a`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 2.0 KB (1997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ee7c0d4494e4969ea1169860964199b2d8f07e12d5893918d39a19f0d78da7b`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52ab4e94d4ecccbabe8bcbd809da54dee04cf1a71e9ccf8ba17044ad1674402e`  
		Last Modified: Fri, 25 Jan 2019 00:32:42 GMT  
		Size: 807.3 KB (807317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a9b43a13aace689aa2b429e8c85e7ec007f71e78925500aba9aec9d1e10724d`  
		Last Modified: Fri, 25 Jan 2019 00:32:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:841290f7f76b30a9919a2c482801239810e0c9c13e57fa61403d537f2314f5eb`  
		Last Modified: Fri, 25 Jan 2019 00:32:49 GMT  
		Size: 6.4 MB (6400812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5a6b9723043faba68a170083be29c8cb4e2f880bbbcaa2a6553a18d005f69c1`  
		Last Modified: Fri, 25 Jan 2019 00:32:38 GMT  
		Size: 25.4 KB (25436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e615233ec6c703dd1c55b6f201aac2c52b7dd7199105b36b9b5c358f3fb074`  
		Last Modified: Wed, 06 Feb 2019 11:44:13 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:953ccc2146d7a986644924ebc9b51f00d248a725a83c0e4ecf6ad98d1b40ab8a`  
		Last Modified: Wed, 06 Feb 2019 11:44:33 GMT  
		Size: 52.4 MB (52399383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64fa29795208a8379e887b6954efd477d18446841147cb382696c051d688111e`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983854de3feb5df9477f5d1f0279e67e1fb3983491f952b6dac461e82d636850`  
		Last Modified: Sat, 02 Mar 2019 10:24:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; 386

```console
$ docker pull mariadb@sha256:326b0063454275fef0410d2947e3e5a6785f617edd9d30b9c79131694de1a590
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.8 MB (114809229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abaa2de2528171aa65323e3e389c9ce5a56baef8240f61809b68305847df4a2a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:10:15 GMT
ADD file:5eb7fbb8d37c8af87ec338f30daa79f6f9290d5c9e73eb68fb0c35e2b134a7a4 in / 
# Wed, 23 Jan 2019 12:10:17 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:10:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:10:21 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:10:21 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:15:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:15:09 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:09 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:15:20 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:15:20 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:15:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:15:44 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:15:46 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:15:46 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 06 Feb 2019 12:56:18 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Wed, 06 Feb 2019 12:56:19 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:57:21 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:57:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:00 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:01 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:01 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f9e1bdbdad67ba84a0cda79d4fbc0fbbf43a669bc04d4ff0833f44347dbcb367`  
		Last Modified: Wed, 23 Jan 2019 12:12:08 GMT  
		Size: 43.7 MB (43734470 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8037db3f0bf28fe7036041245bdafb79c5fc6bacc5f26f1d27d5bd07a89e1d57`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 853.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2e713edfe85d50c0209bc0b28d36f5ec2940d91a452e742ba365ef163124eda`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 515.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c57b1b5205d99ac4fe058ad682b32ab6a295bc3babcd91551d457ae5c73b4db`  
		Last Modified: Wed, 23 Jan 2019 12:11:55 GMT  
		Size: 168.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:069d85737291207cf017da2e99a0863d1cf39f8738ff5efc27d1e373bd348629`  
		Last Modified: Thu, 24 Jan 2019 00:18:10 GMT  
		Size: 2.0 KB (1979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4101243177fd4943cf09302e71a526bba67931a1185ac9b7f20be53efcac6f77`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d50a41f9e25f2d0120998f8877ba3ee435c76c6e802b8ad72105fa8b5494482e`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 819.3 KB (819349 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a800718b75493fbea0398c68114afd5c0129d9da119469b5e3c4a5cc4fac6fc2`  
		Last Modified: Thu, 24 Jan 2019 00:18:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8443f5dba808c6ffebb5eae38a48f6441b21c63debe129dcb94b3fb6898e5234`  
		Last Modified: Thu, 24 Jan 2019 00:18:12 GMT  
		Size: 7.5 MB (7450649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acb470299560ddd052b6efcc07a2b4394fa65bd1526393acbc4a562eff18f401`  
		Last Modified: Thu, 24 Jan 2019 00:18:08 GMT  
		Size: 25.4 KB (25437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e03cbf5c1c92af0c62ad6bea32f00f7459285424966f49b764e1ef74b3652e`  
		Last Modified: Wed, 06 Feb 2019 12:58:17 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a0c7e94d375bb50dcf0480a27bdc4772da9b041fcb1e6db93f3df4b3a981e8`  
		Last Modified: Wed, 06 Feb 2019 12:58:45 GMT  
		Size: 62.8 MB (62772130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:540120a96ee8605326a991283d17093d0ea26026769e2e36d385b344ebf0d80c`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9a8b30512cf1b37e4c66c6b8edfb61bf8cb49ecd0adefd60cedf5a1110166e`  
		Last Modified: Sat, 02 Mar 2019 12:12:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.0-xenial` - linux; ppc64le

```console
$ docker pull mariadb@sha256:4e78c07fc4bb5020f67d0ee414ddb1616fe06149ddbb63c9997c28c72fca9e92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.5 MB (109500947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a087fbab81cac2b308c5aa313c0a81bc8b8789ac9e67fffc1357e532e5582ecf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:49 GMT
ADD file:662e1451430b294da63b388f789556544f888e1c853a682bee04b16c1ce0c5f8 in / 
# Tue, 12 Mar 2019 08:39:00 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:39:09 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:39:15 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:39:18 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:27:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:27:53 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:27:59 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:28:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:28:58 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:30:23 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:30:30 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:30:36 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 12 Mar 2019 09:30:42 GMT
ENV MARIADB_VERSION=10.0.38+maria-1~xenial
# Tue, 12 Mar 2019 09:30:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu xenial main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:33:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt xenial main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:33:11 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:33:14 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:33:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:33:32 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:33:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4d4e695beabdb9803aaf0b66ff290a2b37ee4b2c6ac6c54a79af9402ec1e8c63`  
		Last Modified: Mon, 04 Mar 2019 15:21:34 GMT  
		Size: 45.8 MB (45775047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b4bc7904c59ff5c00672c95b43d447ee8bc66491ed4d8ec9b6977517a8c0e5f`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44807514cf46fe796993725e6d846bd71cbb1b6d5732ff662eed4fdacd6b0f99`  
		Last Modified: Tue, 12 Mar 2019 08:41:22 GMT  
		Size: 475.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478e6a97f35ae67ea6d8b7e0069332d9070fb6a49956271e8ab2671463d94e4c`  
		Last Modified: Tue, 12 Mar 2019 08:41:23 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c87c94656635bbd6fb53ffe87d65bb2042e84115aadef43932742a67b549e36b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 2.0 KB (1993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ed7f634b74abb73f7894530c8dee8d1c88007289bf341ef8b5fd7fde313b26`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 180.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:712115abda81389a8e6736a6054c6662b68c817253b786c5f97d89a45b2c5bc7`  
		Last Modified: Tue, 12 Mar 2019 09:44:29 GMT  
		Size: 808.9 KB (808892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ac202c7b61427e3111d9af379d3e9d281165b6ee891d2e66654cf849fa296c0`  
		Last Modified: Tue, 12 Mar 2019 09:44:28 GMT  
		Size: 149.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f924c1b5d84f4b5253f77543f98f66a813bf65e666c56c5b56aca500d504b74b`  
		Last Modified: Tue, 12 Mar 2019 09:44:31 GMT  
		Size: 7.2 MB (7211115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:808ca656026df65ae6653ca4c76043ff94b934ca5b2cea5d850f14aa1ad995e4`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd611830da1df1581f55cc270ec8c47eb445859cc77f4996ea5c406af4a521a3`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9722e491bcd41a656681f9d323dfaa2e7c4b9ab05ebaf61ecbb16e2d707dfd53`  
		Last Modified: Tue, 12 Mar 2019 09:44:39 GMT  
		Size: 55.7 MB (55672128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fcaf9c6edc8ecb124cfe1a7d396285185bf2085205264be24708757a6734db`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fce1d68dbe8b776b74568fe5d808cce1d927fd9d4a8fe8c1ddecc051be774df`  
		Last Modified: Tue, 12 Mar 2019 09:44:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:6656e9a3f8989f5db1e622f8e03056614fd061ad2ed40b70c12cf5cf964b265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:0cb66f4573671fcb831b4c754df92edf3e15c261833d376d1a5925e76da34318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118937696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89611c10bfcc60c65aa30831117ab1917f4cf5b1b65ea4343ec4f48c7e60205`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 01:02:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:02:54 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:02:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:02:55 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:56 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531f6af09e443fffc0d9412363b4d34aa991f280a77f95d821659acec35ed47`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913bfe1d17bb6b1f464fdbf14a6ba03957b9b492d31e04e89a024d3a10a0181a`  
		Last Modified: Tue, 12 Mar 2019 01:07:03 GMT  
		Size: 77.8 MB (77808748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f284324f126d6b2cc47b3070ac21943302fbe15e09f6ddf7e23b84499f93f2c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9c9280c3937a7f4f42423167d778b45ccf577bfa5c4c412b26a0df667abd3`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6151c60f75ed21fe0f323bd954222da292cba5d981bc9d664327bb586a616885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec95328cb5647335e5309b40d0cd2a95e0a9bcd0bd4dc439c8b48fc59145995`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 11:01:20 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 07 Feb 2019 11:01:21 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Thu, 07 Feb 2019 11:01:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 07 Feb 2019 11:03:16 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 07 Feb 2019 11:03:17 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:07 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:14 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dd2a814c0c8f4c8e0ea793201cd74b4edd20e03b6f0c3979bd051b918f2902`  
		Last Modified: Thu, 07 Feb 2019 11:06:30 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d1def84cbaf75938cb8406cbba262bb2fcb6854e7ea032a6f3e390101cd1`  
		Last Modified: Thu, 07 Feb 2019 11:07:00 GMT  
		Size: 74.1 MB (74135122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294552d0c92932ccd406b1fbb8335164f8841d506b51848a3e2664790b17342`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a7b4cd7d4c6a3fa0089d264005a5fcef39b420a841438a60d66e268fb41d1`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8d1a7e1d6664d573c2af9f0a43820966fc72f42e0e8296a65cbf3554037e6774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197b500a9c0a66d5ffa277c81904ac6801e5b1992147bbc25ecc3cb5dd8e66a2`
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
# Tue, 12 Mar 2019 09:23:43 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 09:23:46 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 09:23:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:26:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:26:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:26:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:26:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:26:41 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:26:45 GMT
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
	-	`sha256:f626131ffc1f08c313b8250eff5d1f5bd59011ce4d59d5c6196f5c35453a61ce`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a0f863226ad5778d4a6c13884a947dfa2489b9af92cd215d4a78892f4bea8`  
		Last Modified: Tue, 12 Mar 2019 09:44:04 GMT  
		Size: 78.3 MB (78314529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30777bae13d4053d6d310a2c5073c6a2ce744df112e0f997b2380cd8a551fc8`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0d7ceec856b63bbd4a42eab16982a46eab565a858087fcd0358ccba59fe1b4`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.38`

```console
$ docker pull mariadb@sha256:6656e9a3f8989f5db1e622f8e03056614fd061ad2ed40b70c12cf5cf964b265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.38` - linux; amd64

```console
$ docker pull mariadb@sha256:0cb66f4573671fcb831b4c754df92edf3e15c261833d376d1a5925e76da34318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118937696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89611c10bfcc60c65aa30831117ab1917f4cf5b1b65ea4343ec4f48c7e60205`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 01:02:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:02:54 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:02:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:02:55 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:56 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531f6af09e443fffc0d9412363b4d34aa991f280a77f95d821659acec35ed47`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913bfe1d17bb6b1f464fdbf14a6ba03957b9b492d31e04e89a024d3a10a0181a`  
		Last Modified: Tue, 12 Mar 2019 01:07:03 GMT  
		Size: 77.8 MB (77808748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f284324f126d6b2cc47b3070ac21943302fbe15e09f6ddf7e23b84499f93f2c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9c9280c3937a7f4f42423167d778b45ccf577bfa5c4c412b26a0df667abd3`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.38` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6151c60f75ed21fe0f323bd954222da292cba5d981bc9d664327bb586a616885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec95328cb5647335e5309b40d0cd2a95e0a9bcd0bd4dc439c8b48fc59145995`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 11:01:20 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 07 Feb 2019 11:01:21 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Thu, 07 Feb 2019 11:01:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 07 Feb 2019 11:03:16 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 07 Feb 2019 11:03:17 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:07 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:14 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dd2a814c0c8f4c8e0ea793201cd74b4edd20e03b6f0c3979bd051b918f2902`  
		Last Modified: Thu, 07 Feb 2019 11:06:30 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d1def84cbaf75938cb8406cbba262bb2fcb6854e7ea032a6f3e390101cd1`  
		Last Modified: Thu, 07 Feb 2019 11:07:00 GMT  
		Size: 74.1 MB (74135122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294552d0c92932ccd406b1fbb8335164f8841d506b51848a3e2664790b17342`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a7b4cd7d4c6a3fa0089d264005a5fcef39b420a841438a60d66e268fb41d1`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.38` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8d1a7e1d6664d573c2af9f0a43820966fc72f42e0e8296a65cbf3554037e6774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197b500a9c0a66d5ffa277c81904ac6801e5b1992147bbc25ecc3cb5dd8e66a2`
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
# Tue, 12 Mar 2019 09:23:43 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 09:23:46 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 09:23:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:26:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:26:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:26:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:26:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:26:41 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:26:45 GMT
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
	-	`sha256:f626131ffc1f08c313b8250eff5d1f5bd59011ce4d59d5c6196f5c35453a61ce`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a0f863226ad5778d4a6c13884a947dfa2489b9af92cd215d4a78892f4bea8`  
		Last Modified: Tue, 12 Mar 2019 09:44:04 GMT  
		Size: 78.3 MB (78314529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30777bae13d4053d6d310a2c5073c6a2ce744df112e0f997b2380cd8a551fc8`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0d7ceec856b63bbd4a42eab16982a46eab565a858087fcd0358ccba59fe1b4`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.38-bionic`

```console
$ docker pull mariadb@sha256:6656e9a3f8989f5db1e622f8e03056614fd061ad2ed40b70c12cf5cf964b265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1.38-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:0cb66f4573671fcb831b4c754df92edf3e15c261833d376d1a5925e76da34318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118937696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89611c10bfcc60c65aa30831117ab1917f4cf5b1b65ea4343ec4f48c7e60205`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 01:02:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:02:54 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:02:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:02:55 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:56 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531f6af09e443fffc0d9412363b4d34aa991f280a77f95d821659acec35ed47`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913bfe1d17bb6b1f464fdbf14a6ba03957b9b492d31e04e89a024d3a10a0181a`  
		Last Modified: Tue, 12 Mar 2019 01:07:03 GMT  
		Size: 77.8 MB (77808748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f284324f126d6b2cc47b3070ac21943302fbe15e09f6ddf7e23b84499f93f2c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9c9280c3937a7f4f42423167d778b45ccf577bfa5c4c412b26a0df667abd3`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.38-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6151c60f75ed21fe0f323bd954222da292cba5d981bc9d664327bb586a616885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec95328cb5647335e5309b40d0cd2a95e0a9bcd0bd4dc439c8b48fc59145995`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 11:01:20 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 07 Feb 2019 11:01:21 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Thu, 07 Feb 2019 11:01:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 07 Feb 2019 11:03:16 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 07 Feb 2019 11:03:17 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:07 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:14 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dd2a814c0c8f4c8e0ea793201cd74b4edd20e03b6f0c3979bd051b918f2902`  
		Last Modified: Thu, 07 Feb 2019 11:06:30 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d1def84cbaf75938cb8406cbba262bb2fcb6854e7ea032a6f3e390101cd1`  
		Last Modified: Thu, 07 Feb 2019 11:07:00 GMT  
		Size: 74.1 MB (74135122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294552d0c92932ccd406b1fbb8335164f8841d506b51848a3e2664790b17342`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a7b4cd7d4c6a3fa0089d264005a5fcef39b420a841438a60d66e268fb41d1`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1.38-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8d1a7e1d6664d573c2af9f0a43820966fc72f42e0e8296a65cbf3554037e6774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197b500a9c0a66d5ffa277c81904ac6801e5b1992147bbc25ecc3cb5dd8e66a2`
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
# Tue, 12 Mar 2019 09:23:43 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 09:23:46 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 09:23:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:26:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:26:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:26:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:26:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:26:41 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:26:45 GMT
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
	-	`sha256:f626131ffc1f08c313b8250eff5d1f5bd59011ce4d59d5c6196f5c35453a61ce`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a0f863226ad5778d4a6c13884a947dfa2489b9af92cd215d4a78892f4bea8`  
		Last Modified: Tue, 12 Mar 2019 09:44:04 GMT  
		Size: 78.3 MB (78314529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30777bae13d4053d6d310a2c5073c6a2ce744df112e0f997b2380cd8a551fc8`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0d7ceec856b63bbd4a42eab16982a46eab565a858087fcd0358ccba59fe1b4`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-bionic`

```console
$ docker pull mariadb@sha256:6656e9a3f8989f5db1e622f8e03056614fd061ad2ed40b70c12cf5cf964b265c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.1-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:0cb66f4573671fcb831b4c754df92edf3e15c261833d376d1a5925e76da34318
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.9 MB (118937696 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e89611c10bfcc60c65aa30831117ab1917f4cf5b1b65ea4343ec4f48c7e60205`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 01:02:07 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 01:02:08 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:02:54 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:02:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:02:55 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:56 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:56 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1531f6af09e443fffc0d9412363b4d34aa991f280a77f95d821659acec35ed47`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913bfe1d17bb6b1f464fdbf14a6ba03957b9b492d31e04e89a024d3a10a0181a`  
		Last Modified: Tue, 12 Mar 2019 01:07:03 GMT  
		Size: 77.8 MB (77808748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f284324f126d6b2cc47b3070ac21943302fbe15e09f6ddf7e23b84499f93f2c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b9c9280c3937a7f4f42423167d778b45ccf577bfa5c4c412b26a0df667abd3`  
		Last Modified: Tue, 12 Mar 2019 01:06:46 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:6151c60f75ed21fe0f323bd954222da292cba5d981bc9d664327bb586a616885
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.2 MB (111206839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ec95328cb5647335e5309b40d0cd2a95e0a9bcd0bd4dc439c8b48fc59145995`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 11:01:20 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 07 Feb 2019 11:01:21 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Thu, 07 Feb 2019 11:01:23 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 07 Feb 2019 11:03:16 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 07 Feb 2019 11:03:17 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:22:07 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:22:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:22:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:22:14 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37dd2a814c0c8f4c8e0ea793201cd74b4edd20e03b6f0c3979bd051b918f2902`  
		Last Modified: Thu, 07 Feb 2019 11:06:30 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f723d1def84cbaf75938cb8406cbba262bb2fcb6854e7ea032a6f3e390101cd1`  
		Last Modified: Thu, 07 Feb 2019 11:07:00 GMT  
		Size: 74.1 MB (74135122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c294552d0c92932ccd406b1fbb8335164f8841d506b51848a3e2664790b17342`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d3a7b4cd7d4c6a3fa0089d264005a5fcef39b420a841438a60d66e268fb41d1`  
		Last Modified: Sat, 02 Mar 2019 10:24:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.1-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8d1a7e1d6664d573c2af9f0a43820966fc72f42e0e8296a65cbf3554037e6774
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.5 MB (123479757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197b500a9c0a66d5ffa277c81904ac6801e5b1992147bbc25ecc3cb5dd8e66a2`
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
# Tue, 12 Mar 2019 09:23:43 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 12 Mar 2019 09:23:46 GMT
ENV MARIADB_VERSION=1:10.1.38+maria-1~bionic
# Tue, 12 Mar 2019 09:23:52 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:26:11 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.1'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:26:19 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:26:22 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:26:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:26:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:26:41 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:26:45 GMT
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
	-	`sha256:f626131ffc1f08c313b8250eff5d1f5bd59011ce4d59d5c6196f5c35453a61ce`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e9a0f863226ad5778d4a6c13884a947dfa2489b9af92cd215d4a78892f4bea8`  
		Last Modified: Tue, 12 Mar 2019 09:44:04 GMT  
		Size: 78.3 MB (78314529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e30777bae13d4053d6d310a2c5073c6a2ce744df112e0f997b2380cd8a551fc8`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e0d7ceec856b63bbd4a42eab16982a46eab565a858087fcd0358ccba59fe1b4`  
		Last Modified: Tue, 12 Mar 2019 09:43:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:41273db8b7f680a13e9f4f3daf6409d72d1289d294349b5fa56a510c39ffd959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:7cb33f8982ad6a63a3ac4be3585be6b1ce5176d1c46ea252bdb0ef5175154a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114467325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddeffa85b1cb305e246986c49b47f640c75358379a515353e6a6fee4e4c2ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 01:01:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:57 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62bf200caa8375b88f14778ed5ccd2f4fa4c0e7acc56b5fbd10f5a0ce548c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:25 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292906f03c19a77d467fdd889c0f511958af21052ed13f3d5da30a91fc3ca0b`  
		Last Modified: Tue, 12 Mar 2019 01:06:39 GMT  
		Size: 73.3 MB (73338377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ea3d5b29946e1c6975e2de3db962e47769b8efeae1df34942517ab4aadbf0`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1fc2fce72d8339b524527268b73ba90f6b23818e1c315fea712c5a94752609`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b1af14c051fc279a09fb1132fd5995de439ad94f0527eab88027075a29683ac7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109353113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf4bd3152133aa7e06bf25eae62dd51e1e9ff5a5be393cf943934d2ccb5f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:59:23 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Feb 2019 10:13:19 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Wed, 13 Feb 2019 10:13:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Feb 2019 10:14:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Feb 2019 10:14:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:49 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:59 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfdf4afb2ad3794eed4629928558e7c95c96507c9b32de6a7a0e752ab86192c`  
		Last Modified: Wed, 13 Feb 2019 10:15:32 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e360a3af337dc99c52073e6174393f88793d3bfd25160cd27ec8fa51325770f`  
		Last Modified: Wed, 13 Feb 2019 10:15:59 GMT  
		Size: 72.3 MB (72281390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007e88725e4e1ccfc7f3ac65f67888f0bd7202091e33026ef8ef59f0bb28c05`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 2.9 KB (2947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddfc430793dfb1ee984a935906cc57a3b2d131b1a486ac835b76ea6e35e8978`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3816248971d7b39e46473f60c0261e0fe7dbb66812adfb65ae9fc808a9228026
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121360436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5e04d982dbbb57afd5fd1979b3ca488c7d67103a867ac9c7fd9a3fa5f2e970`
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
# Tue, 12 Mar 2019 09:21:18 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 09:21:20 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 09:21:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:23:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:23:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:23:16 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:23:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:23:28 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:23:31 GMT
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
	-	`sha256:0d3621aa63478254680b4aa0206ccdaaf61df6f6250581aac337c5f9a944d33a`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856113addac998c1c1a2fec20639039b8b3cdc970c77a647cdac3020c1a24088`  
		Last Modified: Tue, 12 Mar 2019 09:43:27 GMT  
		Size: 76.2 MB (76195206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f1561aef817be55d32c46a0af29453c45b1aa88251c571c45cfc79be781cad`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a718c87ec23ce2c2d7a9965d54f61e27ac219e21e2aff45e03146ca54a05f`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.22`

```console
$ docker pull mariadb@sha256:41273db8b7f680a13e9f4f3daf6409d72d1289d294349b5fa56a510c39ffd959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.22` - linux; amd64

```console
$ docker pull mariadb@sha256:7cb33f8982ad6a63a3ac4be3585be6b1ce5176d1c46ea252bdb0ef5175154a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114467325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddeffa85b1cb305e246986c49b47f640c75358379a515353e6a6fee4e4c2ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 01:01:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:57 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62bf200caa8375b88f14778ed5ccd2f4fa4c0e7acc56b5fbd10f5a0ce548c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:25 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292906f03c19a77d467fdd889c0f511958af21052ed13f3d5da30a91fc3ca0b`  
		Last Modified: Tue, 12 Mar 2019 01:06:39 GMT  
		Size: 73.3 MB (73338377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ea3d5b29946e1c6975e2de3db962e47769b8efeae1df34942517ab4aadbf0`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1fc2fce72d8339b524527268b73ba90f6b23818e1c315fea712c5a94752609`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.22` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b1af14c051fc279a09fb1132fd5995de439ad94f0527eab88027075a29683ac7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109353113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf4bd3152133aa7e06bf25eae62dd51e1e9ff5a5be393cf943934d2ccb5f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:59:23 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Feb 2019 10:13:19 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Wed, 13 Feb 2019 10:13:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Feb 2019 10:14:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Feb 2019 10:14:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:49 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:59 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfdf4afb2ad3794eed4629928558e7c95c96507c9b32de6a7a0e752ab86192c`  
		Last Modified: Wed, 13 Feb 2019 10:15:32 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e360a3af337dc99c52073e6174393f88793d3bfd25160cd27ec8fa51325770f`  
		Last Modified: Wed, 13 Feb 2019 10:15:59 GMT  
		Size: 72.3 MB (72281390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007e88725e4e1ccfc7f3ac65f67888f0bd7202091e33026ef8ef59f0bb28c05`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 2.9 KB (2947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddfc430793dfb1ee984a935906cc57a3b2d131b1a486ac835b76ea6e35e8978`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.22` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3816248971d7b39e46473f60c0261e0fe7dbb66812adfb65ae9fc808a9228026
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121360436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5e04d982dbbb57afd5fd1979b3ca488c7d67103a867ac9c7fd9a3fa5f2e970`
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
# Tue, 12 Mar 2019 09:21:18 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 09:21:20 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 09:21:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:23:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:23:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:23:16 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:23:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:23:28 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:23:31 GMT
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
	-	`sha256:0d3621aa63478254680b4aa0206ccdaaf61df6f6250581aac337c5f9a944d33a`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856113addac998c1c1a2fec20639039b8b3cdc970c77a647cdac3020c1a24088`  
		Last Modified: Tue, 12 Mar 2019 09:43:27 GMT  
		Size: 76.2 MB (76195206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f1561aef817be55d32c46a0af29453c45b1aa88251c571c45cfc79be781cad`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a718c87ec23ce2c2d7a9965d54f61e27ac219e21e2aff45e03146ca54a05f`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.22-bionic`

```console
$ docker pull mariadb@sha256:41273db8b7f680a13e9f4f3daf6409d72d1289d294349b5fa56a510c39ffd959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2.22-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:7cb33f8982ad6a63a3ac4be3585be6b1ce5176d1c46ea252bdb0ef5175154a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114467325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddeffa85b1cb305e246986c49b47f640c75358379a515353e6a6fee4e4c2ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 01:01:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:57 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62bf200caa8375b88f14778ed5ccd2f4fa4c0e7acc56b5fbd10f5a0ce548c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:25 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292906f03c19a77d467fdd889c0f511958af21052ed13f3d5da30a91fc3ca0b`  
		Last Modified: Tue, 12 Mar 2019 01:06:39 GMT  
		Size: 73.3 MB (73338377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ea3d5b29946e1c6975e2de3db962e47769b8efeae1df34942517ab4aadbf0`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1fc2fce72d8339b524527268b73ba90f6b23818e1c315fea712c5a94752609`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.22-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b1af14c051fc279a09fb1132fd5995de439ad94f0527eab88027075a29683ac7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109353113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf4bd3152133aa7e06bf25eae62dd51e1e9ff5a5be393cf943934d2ccb5f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:59:23 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Feb 2019 10:13:19 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Wed, 13 Feb 2019 10:13:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Feb 2019 10:14:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Feb 2019 10:14:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:49 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:59 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfdf4afb2ad3794eed4629928558e7c95c96507c9b32de6a7a0e752ab86192c`  
		Last Modified: Wed, 13 Feb 2019 10:15:32 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e360a3af337dc99c52073e6174393f88793d3bfd25160cd27ec8fa51325770f`  
		Last Modified: Wed, 13 Feb 2019 10:15:59 GMT  
		Size: 72.3 MB (72281390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007e88725e4e1ccfc7f3ac65f67888f0bd7202091e33026ef8ef59f0bb28c05`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 2.9 KB (2947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddfc430793dfb1ee984a935906cc57a3b2d131b1a486ac835b76ea6e35e8978`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2.22-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3816248971d7b39e46473f60c0261e0fe7dbb66812adfb65ae9fc808a9228026
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121360436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5e04d982dbbb57afd5fd1979b3ca488c7d67103a867ac9c7fd9a3fa5f2e970`
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
# Tue, 12 Mar 2019 09:21:18 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 09:21:20 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 09:21:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:23:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:23:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:23:16 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:23:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:23:28 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:23:31 GMT
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
	-	`sha256:0d3621aa63478254680b4aa0206ccdaaf61df6f6250581aac337c5f9a944d33a`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856113addac998c1c1a2fec20639039b8b3cdc970c77a647cdac3020c1a24088`  
		Last Modified: Tue, 12 Mar 2019 09:43:27 GMT  
		Size: 76.2 MB (76195206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f1561aef817be55d32c46a0af29453c45b1aa88251c571c45cfc79be781cad`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a718c87ec23ce2c2d7a9965d54f61e27ac219e21e2aff45e03146ca54a05f`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-bionic`

```console
$ docker pull mariadb@sha256:41273db8b7f680a13e9f4f3daf6409d72d1289d294349b5fa56a510c39ffd959
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.2-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:7cb33f8982ad6a63a3ac4be3585be6b1ce5176d1c46ea252bdb0ef5175154a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114467325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ddeffa85b1cb305e246986c49b47f640c75358379a515353e6a6fee4e4c2ecc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 01:01:36 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 01:01:37 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:57 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:02:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c62bf200caa8375b88f14778ed5ccd2f4fa4c0e7acc56b5fbd10f5a0ce548c5`  
		Last Modified: Tue, 12 Mar 2019 01:06:25 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9292906f03c19a77d467fdd889c0f511958af21052ed13f3d5da30a91fc3ca0b`  
		Last Modified: Tue, 12 Mar 2019 01:06:39 GMT  
		Size: 73.3 MB (73338377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:460ea3d5b29946e1c6975e2de3db962e47769b8efeae1df34942517ab4aadbf0`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f1fc2fce72d8339b524527268b73ba90f6b23818e1c315fea712c5a94752609`  
		Last Modified: Tue, 12 Mar 2019 01:06:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:b1af14c051fc279a09fb1132fd5995de439ad94f0527eab88027075a29683ac7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.4 MB (109353113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9faf4bd3152133aa7e06bf25eae62dd51e1e9ff5a5be393cf943934d2ccb5f42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:59:23 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 13 Feb 2019 10:13:19 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Wed, 13 Feb 2019 10:13:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 13 Feb 2019 10:14:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 13 Feb 2019 10:14:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:49 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:59 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:22:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfdf4afb2ad3794eed4629928558e7c95c96507c9b32de6a7a0e752ab86192c`  
		Last Modified: Wed, 13 Feb 2019 10:15:32 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e360a3af337dc99c52073e6174393f88793d3bfd25160cd27ec8fa51325770f`  
		Last Modified: Wed, 13 Feb 2019 10:15:59 GMT  
		Size: 72.3 MB (72281390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6007e88725e4e1ccfc7f3ac65f67888f0bd7202091e33026ef8ef59f0bb28c05`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 2.9 KB (2947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddfc430793dfb1ee984a935906cc57a3b2d131b1a486ac835b76ea6e35e8978`  
		Last Modified: Sat, 02 Mar 2019 10:24:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.2-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:3816248971d7b39e46473f60c0261e0fe7dbb66812adfb65ae9fc808a9228026
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121360436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5e04d982dbbb57afd5fd1979b3ca488c7d67103a867ac9c7fd9a3fa5f2e970`
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
# Tue, 12 Mar 2019 09:21:18 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 12 Mar 2019 09:21:20 GMT
ENV MARIADB_VERSION=1:10.2.22+maria~bionic
# Tue, 12 Mar 2019 09:21:26 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:23:09 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup-10.2'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:23:14 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:23:16 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:23:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:23:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:23:28 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:23:31 GMT
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
	-	`sha256:0d3621aa63478254680b4aa0206ccdaaf61df6f6250581aac337c5f9a944d33a`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:856113addac998c1c1a2fec20639039b8b3cdc970c77a647cdac3020c1a24088`  
		Last Modified: Tue, 12 Mar 2019 09:43:27 GMT  
		Size: 76.2 MB (76195206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1f1561aef817be55d32c46a0af29453c45b1aa88251c571c45cfc79be781cad`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a718c87ec23ce2c2d7a9965d54f61e27ac219e21e2aff45e03146ca54a05f`  
		Last Modified: Tue, 12 Mar 2019 09:43:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.13`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.13` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.13` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.13` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.13-bionic`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3.13-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.13-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3.13-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-bionic`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.3`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.3` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.3` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.3` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4.3-bionic`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4.3-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.3-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4.3-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.4-bionic`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10.4-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10.4-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-bionic`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:10-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:10-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.63`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.63` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.63` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.63` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.63-trusty`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5.63-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.63-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5.63-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-trusty`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5.5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5.5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-trusty`

```console
$ docker pull mariadb@sha256:af033260f0e6485e1161e171e9bd823bffbc9ec70a4b27edd1ff0bd2ee764e73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le

### `mariadb:5-trusty` - linux; amd64

```console
$ docker pull mariadb@sha256:e8ed4a5cf2dbc63a254db250f76a0c2168bc1307dccc766f0aa1376ebc2a211c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.4 MB (118384520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bef17d244119e0a712bab982c1965666257efe8c58a2b2bfc391d7ff67f9fbf3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:54 GMT
ADD file:4a03a167b06c4f47e20544d8e421dc0ebd8c1eadb24f0855f11b5759910e8674 in / 
# Tue, 12 Mar 2019 00:20:56 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:56 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:57 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:57 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 01:04:30 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:04:33 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:34 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:04:44 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:04:45 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:04:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:04:56 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:04:58 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 01:04:58 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 01:04:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:05:15 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:05:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:05:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:05:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:05:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:05:17 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:05:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:e082d449913058b0a86fef6c0208e5769b2d024c3bb465b13e53cc0da09e3c4c`  
		Last Modified: Tue, 05 Mar 2019 13:24:44 GMT  
		Size: 67.1 MB (67148830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:371450624c9ee7ed9a89fe50488f5f03060a16a4bead015e11a423bd46f553c2`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 72.7 KB (72650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8a555b3a57ca08b00da3b695d8e5188503fbfed6f740bb9f5601e68c8497d4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1456d810d42e722e565c11020aaeb756ee536ec1f5f799f528eeea2cb0306f4d`  
		Last Modified: Tue, 12 Mar 2019 00:21:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b389962f3fa95a06a066a52bcb4dadb760a1810a26d376ae76381011bc3f59d6`  
		Last Modified: Tue, 12 Mar 2019 01:07:32 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2120d093abaaeab050dc31281aab033a61736adc343fd55231118416452d7759`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3ee311ffd3239404cede04c6300db787adb3979ced0ff64400b5ec8b37a0e8`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 1.6 MB (1573088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2acde5647c5f0e19f96feea444be7f04f52165bfe14c7be212c0fd6cded077fc`  
		Last Modified: Tue, 12 Mar 2019 01:07:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bd88f3e31e93e5589d4b972e606894ff46b89c1cf4fab3b73db70d715fdd9fa`  
		Last Modified: Tue, 12 Mar 2019 01:07:31 GMT  
		Size: 4.3 MB (4262462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afd90a1c3997a9c9016c98e50fc80278bb557874c5a46857699282ed33fcbe8`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 26.5 KB (26546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69d8cf2acfffa7841f3d2fb4bfc57e7cf15a8531386be095e1ce4fd19d378fd9`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70c4dcbb820986748e22adc728010123c932126c420fbda8b12f1a7e13597623`  
		Last Modified: Tue, 12 Mar 2019 01:07:39 GMT  
		Size: 45.3 MB (45294781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d36a8e08de9e4393cd1bfae6ec2a5cc353db5d121e6a73e2ea756e8fa2016d43`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f53d40a987ebcb20acf873fbe0ac3fbc5dc1c10b8b772b6f7d760317b59a253`  
		Last Modified: Tue, 12 Mar 2019 01:07:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; 386

```console
$ docker pull mariadb@sha256:e5eec69fe65c26b41a3a61767512bcffa63a80ed67b610d6170d31edfdf80962
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114579212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:017c98778653af3908427c69fe6c26d23bc7dbf49d60edbb0cc326c1d9210175`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 23 Jan 2019 12:09:21 GMT
ADD file:6cb4d99fdee765f7b0da3922e48e28ca8c8745b6df9d4b7a0666d08603e4d61f in / 
# Wed, 23 Jan 2019 12:09:23 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 23 Jan 2019 12:09:24 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:09:26 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 23 Jan 2019 12:09:27 GMT
CMD ["/bin/bash"]
# Thu, 24 Jan 2019 00:16:48 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 24 Jan 2019 00:16:59 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:16:59 GMT
ENV GOSU_VERSION=1.10
# Thu, 24 Jan 2019 00:17:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 24 Jan 2019 00:17:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 24 Jan 2019 00:17:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 24 Jan 2019 00:17:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 24 Jan 2019 00:17:34 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 24 Jan 2019 00:17:34 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 06 Feb 2019 12:57:32 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Wed, 06 Feb 2019 12:57:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 06 Feb 2019 12:58:02 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 12:58:02 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 12:12:04 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 12:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 12:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 12:12:06 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 12:12:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:392ca16edc8b1139b5a1aac4b27954543cb7897d0d7cce8eff0f6af6c822e9d0`  
		Last Modified: Wed, 23 Jan 2019 09:30:19 GMT  
		Size: 64.9 MB (64850497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1adc2b4d3f2251efab5c90ab868fda44bbef1e94acde16b3886dd779fee55b96`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 64.9 KB (64855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc7dbd6f59caf4f9a747f2cf0b94e563cd75de15bdf48da25af42c5e464ae3c`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d39f1806580ff5be43843b4b6bc9e7ad1f914dff40fd7af108ac2b9d0854248`  
		Last Modified: Wed, 23 Jan 2019 12:11:28 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2869213ca4bac46f81fc12db3fbfe67b2953ea04a9632ef9c772e58cae901bde`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.8 KB (1827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a803b3a84035e52f87ee77dac645c6bf28dadbd87af24dc34f2dc7df70a7191`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 302.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f57fe29f258b67519aa8d4b356998d0df2a47f57aee15da8313cf739c55f31e9`  
		Last Modified: Thu, 24 Jan 2019 00:18:35 GMT  
		Size: 1.6 MB (1552920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d937847f91e63c02ca6adfea39836124ffa67a50b4ca9e6f8b1fabd00ea00d9d`  
		Last Modified: Thu, 24 Jan 2019 00:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c39e20def39c5a846a4835b322e769cf34d21edce5b46a3fd42f68c3ed5d8af`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 4.2 MB (4249197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa67373801dd81384b8e3af5d7b707d85c9dff38010d44719e680f0f72d280cc`  
		Last Modified: Thu, 24 Jan 2019 00:18:36 GMT  
		Size: 25.4 KB (25435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8148728813c7e6b1b3ecca0c823f2d6a46414d897a76829731d00e7db33d9204`  
		Last Modified: Wed, 06 Feb 2019 12:58:52 GMT  
		Size: 327.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbd3db7d421175562698d6be15b8b419bcd466aac1b56dbea6bfa3943fff36b`  
		Last Modified: Wed, 06 Feb 2019 12:59:11 GMT  
		Size: 43.8 MB (43830155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9b688de2bf7a68ac3b153a09fb82f4e238a6df3d53d21041339725fecbbd3`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 2.9 KB (2940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d731bf5e4e6c677d1b762f3c87b71533cb8ca666667ae65b74677ec5b3c6ed6e`  
		Last Modified: Sat, 02 Mar 2019 12:12:19 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:5-trusty` - linux; ppc64le

```console
$ docker pull mariadb@sha256:8e92173d6e82309a743f36c4a5237125355bc153f040ce6906179d9b2ebd0813
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111933497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14774fc3ad6d00462baa2f41ed78320014826833252853103c4442c462870fd8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 08:38:09 GMT
ADD file:4d2f8c359b4e201499c70a6b9f25e299347d15566f8fe1bc105f9d8a8ce59718 in / 
# Tue, 12 Mar 2019 08:38:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 08:38:22 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 08:38:29 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 08:38:32 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 09:33:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 09:34:40 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:34:44 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 09:35:54 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 09:36:03 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 09:37:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 09:37:57 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 09:38:07 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 09:38:14 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 12 Mar 2019 09:38:20 GMT
ENV MARIADB_VERSION=5.5.63+maria-1~trusty
# Tue, 12 Mar 2019 09:38:33 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:40:07 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='percona-xtrabackup'; 	echo "deb [arch=amd64,i386] https://repo.percona.com/apt trusty main" > /etc/apt/sources.list.d/percona.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona; 	dpkgArch="$(dpkg --print-architecture)"; 	case "${backupPackage}_${dpkgArch##*-}" in 		percona*_amd64 | percona*_i386 ) ;; 		*) backupPackage= ;; 	esac; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:40:15 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:40:17 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:40:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:40:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:40:38 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:40:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f467b6300e666a0c45e457f955904030094680a70a36a7d5163528195ad96427`  
		Last Modified: Mon, 11 Mar 2019 15:23:13 GMT  
		Size: 69.8 MB (69812255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:522d28292b119385dc82dbe1d2b8e92b44d5da06db492b34c48634e622f7f558`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 63.4 KB (63434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2f8d4755a70999526fab64b7c6bab50520d0613f2db63344001fdf40effb29`  
		Last Modified: Tue, 12 Mar 2019 08:40:53 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:425f5728bb9dc938d35ff7ca325ca02d610429aff390d9ec208b9a45b5007cff`  
		Last Modified: Tue, 12 Mar 2019 08:40:54 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8431c55a4c6e0890413b5bc761cc18aaf46daa13ac40967d2e57523f4e53bb86`  
		Last Modified: Tue, 12 Mar 2019 09:45:01 GMT  
		Size: 1.8 KB (1835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af50a19fa7ccbdc34bb4c1986943b545369138029da91a39ce10d774720523dd`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 308.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:752d9edaba5b7b879b4a8348fbc70e963678d74d83c5f3f38fc6a18e5ebf8cc2`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 1.5 MB (1546282 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd0c7ab2d366fa4d9e13e30420be6df57e7d92190bd760dca4e27a1f67213c02`  
		Last Modified: Tue, 12 Mar 2019 09:44:59 GMT  
		Size: 147.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37477931f81c42a6eb144f66eea7c4cbd99c636c12a1ee6759bcb11fc5bfbe04`  
		Last Modified: Tue, 12 Mar 2019 09:45:00 GMT  
		Size: 4.3 MB (4288636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9718542c8b85a684917723d4586d53d3cc1e49e0c144558f76e406b5f3f98be`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 26.6 KB (26551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:939a24c9bf21ff796a324ac68ad12b81523054fb99dde222ad176cbed0be657c`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b50c882a44f3cde2d644a139988033dd408313aef5b3214d4969f0e881c28df6`  
		Last Modified: Tue, 12 Mar 2019 09:45:04 GMT  
		Size: 36.2 MB (36190104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d42dd168bcc225b618990487714a5ca4ffe2b5d1526fc20341743efb58c83d8`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d30df4366a8970daab40f7e9934fdaa1896d66792ea9503115579145ca75c6b6`  
		Last Modified: Tue, 12 Mar 2019 09:44:56 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:bionic`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:98f89262b010055f1e274e9e890ffa27bb57b85915c708f5bef321cd72a277af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:f3609921c2f1251e9bfc903502ca361a249920c3548ffe25434b05e7c9d7323f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.4 MB (115444041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93652b8b80d422415a7771c0cd281d4b9922e1fcbc7f775cf5d3b162b8dc81d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 01:01:04 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 01:01:05 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:01:28 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:01:28 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:01:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:01:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:01:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:30 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:067ff7ef6a221cc9eb43167d61e9905d0dfa781d1089a54b852a122be6c56934`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:895af18c21d01c67453925250ef6a1424db9884289e38011df1f897d76d6345a`  
		Last Modified: Tue, 12 Mar 2019 01:06:14 GMT  
		Size: 74.3 MB (74315093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab4788d5ff4188b474fa0974348c5f9e998a612ff48474502cc53405119062d`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a068a53bcb17c57a2909cf7bc9127f44603cf0ccf508c592115e0357fd8b203f`  
		Last Modified: Tue, 12 Mar 2019 01:05:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:1a200704ebab6f6ab4d6430b633bb611fb6eee7ec9f545f0b8ad7df14d68af76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110326818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a0befb53972c4369e64de269bf2f36f430ec46ffaa79f66bf533143ccb35d00`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:57:11 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 22 Feb 2019 09:56:01 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Fri, 22 Feb 2019 09:56:04 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 22 Feb 2019 09:58:19 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 22 Feb 2019 09:58:20 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:28 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:39 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:caa13bcec012ed5b79541911f0f2dfcc001a9c9743956ca18566b0f13b700396`  
		Last Modified: Fri, 22 Feb 2019 09:59:23 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b71d6427cf0746832bc8eacf42693b6c3e88fc7263c55c18193d1abb6426be6e`  
		Last Modified: Fri, 22 Feb 2019 09:59:52 GMT  
		Size: 73.3 MB (73255099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7998efb911bb791e212a2fb50d6a390aecfd5085d09cb4de0056c037290ae13`  
		Last Modified: Sat, 02 Mar 2019 10:23:42 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8a16350c8ef823d3e07aaa0fdebd9556b9460ae956372a82add137eff01d3ab`  
		Last Modified: Sat, 02 Mar 2019 10:23:43 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:latest` - linux; ppc64le

```console
$ docker pull mariadb@sha256:5e981037043199842124c7ea5e07c9e9f3747f8de7c0884e421225b3cb62dbd3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.4 MB (122392885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:799257469928b13bf9313553285680a8101ae54c4b5f93e16a27c2b4458f7ef0`
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
# Tue, 12 Mar 2019 09:19:11 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 12 Mar 2019 09:19:14 GMT
ENV MARIADB_VERSION=1:10.3.13+maria~bionic
# Tue, 12 Mar 2019 09:19:21 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:20:46 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:20:51 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:20:53 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:20:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:21:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:21:05 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:21:07 GMT
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
	-	`sha256:146d760b313576c2d9df92855475fda264eaa98bc74455ae2b85980c744e0c82`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43c11d2196c2628cb4812f571aac6d0c7133dfc72189a44698a3f3c68693efdd`  
		Last Modified: Tue, 12 Mar 2019 09:42:35 GMT  
		Size: 77.2 MB (77227657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e57b4efc645b8cd05ea92db30adb8f0a539337463b3a3619e6abc897a39ffe`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c93e3e0bd03208abc3d71f86b88baf18de77ed22983cce893f55e32c1c91cc8`  
		Last Modified: Tue, 12 Mar 2019 09:42:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:rc`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:rc-bionic`

```console
$ docker pull mariadb@sha256:42bede7517a6f8c45fe258f3b46cd8795954010a70bc78324fe753692443355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8
	-	linux; ppc64le

### `mariadb:rc-bionic` - linux; amd64

```console
$ docker pull mariadb@sha256:612623fcdea1e55602249fac558339eea97bdcad115b774b3707c7a9fc73faeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118773821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9057231b8afe92fbb34c634859fe4df3a008595dc78bbb73c667df65d2a56360`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 12 Mar 2019 00:20:11 GMT
ADD file:1d7cb45c4e196a6a84319b976b95ce1a9037c40b085e88350c071bf27ff59166 in / 
# Tue, 12 Mar 2019 00:20:12 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 12 Mar 2019 00:20:13 GMT
RUN rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 00:20:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 12 Mar 2019 00:20:17 GMT
CMD ["/bin/bash"]
# Tue, 12 Mar 2019 00:59:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 12 Mar 2019 01:00:00 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:00 GMT
ENV GOSU_VERSION=1.10
# Tue, 12 Mar 2019 01:00:12 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 12 Mar 2019 01:00:13 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 12 Mar 2019 01:00:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Mar 2019 01:00:21 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 12 Mar 2019 01:00:23 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_MAJOR=10.4
# Tue, 12 Mar 2019 01:00:23 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 01:00:24 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 01:00:58 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 01:00:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 01:00:59 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 01:00:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 01:00:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 01:01:00 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 01:01:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:898c46f3b1a1f39827ed135f020c32e2038c87ae0690a8fe73d94e5df9e6a2d6`  
		Last Modified: Fri, 08 Mar 2019 00:24:52 GMT  
		Size: 32.5 MB (32466573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63366dfa0a5076458e37ebae948bc7823bab256ca27e09ab94d298e37df4c2a3`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041d4cd74a929bc4b66ee955ab5b229de098fa389d1a1fb9565e536d8878e15f`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 545.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e1bee0f8701f0ae53a5129dc82115967ae36faa30d7701b195dfc6ec317a51d`  
		Last Modified: Tue, 12 Mar 2019 00:21:23 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa9bfc0c84bf4c08414b5e1be54963214b589c5bee26d3abe00e14d0eb6fea2`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 1.9 KB (1875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e9b088fe1065785cc3a06efd057c60a5c4a0a41f3205dde212cd98e15f0fe1e`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 4.8 MB (4804029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af96bccda5c481980fb09b8e4f16cc18363dedfed9d8bdbf15e5a4df5595036c`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 863.4 KB (863411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0655ee57b408a4df88e858832cff590c7ecd5ff6f559ef97d5e95113a479f517`  
		Last Modified: Tue, 12 Mar 2019 01:05:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e50a9049b1da851bd3827dd2b5951e6e2cef3972bfabc89e5de6d24d6abceb`  
		Last Modified: Tue, 12 Mar 2019 01:05:37 GMT  
		Size: 3.0 MB (2961447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57cd7839e491724104f70aa72476f7d44383c58de44a0194ebe35cbc464c9ca3`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23d8b0c94134c29b225535fa8b3719217386398badd4341fe7a1ed8459147a87`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 329.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4aaa8cd60ac700b95ab7e71ca24b90fbf6837c011515026a489c8eeb7d3386bf`  
		Last Modified: Tue, 12 Mar 2019 01:05:52 GMT  
		Size: 77.6 MB (77644866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:052f0d0b139f6a6ed346768f62c4c188ccf3226a3b773a74e442e79ab6be8113`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 2.9 KB (2944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78d717e43484d875dc5a851c370dc40db6455ea4a04ea0a6f8bc325de41f156d`  
		Last Modified: Tue, 12 Mar 2019 01:05:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; arm64 variant v8

```console
$ docker pull mariadb@sha256:79b2b6d1f75b88caf3bb83dce0a413bf983eaf2315e7ba39df3d422c02b96d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **113.6 MB (113607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebe5f6bc0fcf8434996de16b61d7998f3def8e83dd42922cf7ffe69d0403da37`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 19:16:07 GMT
ADD file:5c24e536ba72da333abe710203f2f2aee98b7e7a6d8a9b3f7571cfa96dee1fcf in / 
# Wed, 06 Feb 2019 19:16:09 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 06 Feb 2019 19:16:14 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:16:17 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 06 Feb 2019 19:16:18 GMT
CMD ["/bin/bash"]
# Thu, 07 Feb 2019 10:53:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 07 Feb 2019 10:54:04 GMT
RUN set -ex; 	apt-get update; 	if ! which gpg; then 		apt-get install -y --no-install-recommends gnupg; 	fi; 	if ! gpg --version | grep -q '^gpg (GnuPG) 1\.'; then 		 apt-get install -y --no-install-recommends dirmngr; 	fi; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:54:05 GMT
ENV GOSU_VERSION=1.10
# Thu, 07 Feb 2019 10:54:34 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 10:54:36 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 07 Feb 2019 10:54:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 		tzdata 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 10:55:00 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	177F4010FE56CA3336300305F1656F24C74CD1D8 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 07 Feb 2019 10:55:04 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --batch --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	command -v gpgconf > /dev/null && gpgconf --kill all || :; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 07 Feb 2019 10:55:04 GMT
ENV MARIADB_MAJOR=10.4
# Sat, 02 Mar 2019 10:18:11 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Sat, 02 Mar 2019 10:18:16 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 02 Mar 2019 10:21:13 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 02 Mar 2019 10:21:14 GMT
VOLUME [/var/lib/mysql]
# Sat, 02 Mar 2019 10:21:15 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Sat, 02 Mar 2019 10:21:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 02 Mar 2019 10:21:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 02 Mar 2019 10:21:21 GMT
EXPOSE 3306
# Sat, 02 Mar 2019 10:21:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:9ef5b901d87c92303900ea484d10726d49c67c4e9fca99625086524c27c93025`  
		Last Modified: Wed, 06 Feb 2019 19:18:30 GMT  
		Size: 29.1 MB (29112536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3daad4f910663d8404cbac98eed8f6332e7c5c4f9bd509f604f5b32f032d8f9a`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e9f0564ef6f85c4690ca0b4ba7acd052790741b6e093c7376b23897e091c8d9`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 500.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc001299f62009a0d8ce4d3efaeaddbb8278bcb7de2fd80ab535fae4f507398f`  
		Last Modified: Wed, 06 Feb 2019 19:18:18 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a28c2f9ac3c8176da36d81402b421f7bb37e53f9d3adee8ae26e0293b63c1884`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a07d7637cf54ce845671a5acac100a98ad096e55063c50f95701105c716997c`  
		Last Modified: Thu, 07 Feb 2019 11:04:08 GMT  
		Size: 4.4 MB (4389412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f95080960e8849a96c75451d9a1f80c34509b7a59cba8b8a2b943bcd12f4c81`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 830.9 KB (830853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e131683f8e1a0a92db7663443211284b53d21dbe437bd30275b861cae12ec52`  
		Last Modified: Thu, 07 Feb 2019 11:04:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a76f360a7949d668f37f97bada3a87c3c73444a5f312b72983b17dfed51d247`  
		Last Modified: Thu, 07 Feb 2019 11:04:07 GMT  
		Size: 2.7 MB (2705464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b1c974cf6cda5912f411c36a4bea0131b0d240bf8f3353430bda0f91a1ff9dc`  
		Last Modified: Thu, 07 Feb 2019 11:04:04 GMT  
		Size: 26.6 KB (26553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab2cdd46ff235e1eb4ee9af0b028c320611d537a40649ae1c2597d9bf02de1fc`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97430bb86e41c90688b2faf4c45a8a9419c064cdbb13c81e2fae34e88623ec38`  
		Last Modified: Sat, 02 Mar 2019 10:23:29 GMT  
		Size: 76.5 MB (76535754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd524077567ccb25c21259a291c6ca0c56c2c080374fe09d8a355403bb85c915`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e810d33c00003e1b31383169fedb29fc26ce7f8b167b12911d9baeb40e3656a`  
		Last Modified: Sat, 02 Mar 2019 10:23:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `mariadb:rc-bionic` - linux; ppc64le

```console
$ docker pull mariadb@sha256:a3179c5a1a0d385f56e1c7c05d196f801245c89bf2005c99d457b5c73d95cbb8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125917275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba660bd2405ce44f29f72fcda808016549cc271df40b4e09df3661b01157bace`
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
# Tue, 12 Mar 2019 09:16:54 GMT
ENV MARIADB_VERSION=1:10.4.3+maria~bionic
# Tue, 12 Mar 2019 09:16:59 GMT
RUN set -e;	echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/ubuntu bionic main" > /etc/apt/sources.list.d/mariadb.list; 	{ 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 12 Mar 2019 09:18:41 GMT
RUN set -ex; 	{ 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections; 	backupPackage='mariadb-backup'; 	apt-get update; 	apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		$backupPackage 		socat 	; 	rm -rf /var/lib/apt/lists/*; 	sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/*; 	rm -rf /var/lib/mysql; 	mkdir -p /var/lib/mysql /var/run/mysqld; 	chown -R mysql:mysql /var/lib/mysql /var/run/mysqld; 	chmod 777 /var/run/mysqld; 	find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/'; 	echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 12 Mar 2019 09:18:45 GMT
VOLUME [/var/lib/mysql]
# Tue, 12 Mar 2019 09:18:46 GMT
COPY file:692ab1bb34fe1e54b7078f442e03bccc9dd47f3d08ff3953a66138a4173d5929 in /usr/local/bin/ 
# Tue, 12 Mar 2019 09:18:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 12 Mar 2019 09:18:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 12 Mar 2019 09:18:59 GMT
EXPOSE 3306
# Tue, 12 Mar 2019 09:19:02 GMT
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
	-	`sha256:ab760e607df70fa8d982e15930c6f6867c8cb6d777603c8fe271807b492ac359`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 328.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4215b22b695eed6a49a1de3dddf4373afa1c70d6559771b7de267f4d419d138a`  
		Last Modified: Tue, 12 Mar 2019 09:41:51 GMT  
		Size: 80.8 MB (80752047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ffdbfae6c1d3938295cf3ad3332502121a916edaf98ed36ab6ae3ff604c39d`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78286d4b55a75c0787a5ecbdc5bf68f70a43f8476cc33e716fd5e751980f13e`  
		Last Modified: Tue, 12 Mar 2019 09:41:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
