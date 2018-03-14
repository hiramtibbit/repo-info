<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.34`](#mariadb10034)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.31`](#mariadb10131)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.13`](#mariadb10213)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.5`](#mariadb1035)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.59`](#mariadb5559)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:f5e93cd79cb34d7a34da1af1e11ef9bfdbcdac629f4a50c59c69b913b061fea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b0e1344a2ea9460ee5a1b4d00f4eb48e3048f6236cf42eb6a5ae3a85fde1ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5e726062ce0de1dc30139ee7d8c72583ea93d721a1b56d0fffcb6dfcf087b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Wed, 14 Mar 2018 05:25:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:26:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:26:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:26:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:26:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:26:04 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:26:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3d3e597bc08c3a08a2c2d9506c459ea83882f9e5c726373e6dbeae702f7ed4`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717718e492b11f31d2869cfd43c56ad593c20c0d8f5bb86fe84369b602678bae`  
		Last Modified: Wed, 14 Mar 2018 05:50:12 GMT  
		Size: 75.0 MB (74988610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba2794b394b2c43fbd80ec9d244dbd6e0ec9042b033ee0b5de98dfa6dde233d`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b4021503ca449f75f6719cc886e88822b88118a4c407238628f7dad3e396c`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:46ea18e1cec48d9f4603ad79f6e8f2a8f0db027ecb5305c98fffc480e4e5a4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:746344f47d74980554c2f1b24a0c2f65fec2719f25fc398bbf4605e4685fa57a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119578846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9915758b9cd6107dc541aa1c83ca4c35b8a712be26a1930778feffb6f2d320fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:28:28 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 14 Mar 2018 05:28:28 GMT
ENV MARIADB_VERSION=10.0.34+maria-1~jessie
# Wed, 14 Mar 2018 05:28:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:29:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:29:18 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:29:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:29:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:29:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:29:20 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:29:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3465287b14197721334e2ab3d2cf6992c368a2003e0615db1d8286e306b2334e`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1053cde864036d0dded4e69f3f505432e59ffec4423746ac85b9c795a9b6be`  
		Last Modified: Wed, 14 Mar 2018 05:52:36 GMT  
		Size: 59.3 MB (59286794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0f497b8e642aa3a5532464ff81830eb2889da70ac012e88095adfcbc6dbbaf`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a0a2e5bd1ca0ecdc85dee4847fc1aacaaceec8cbe70f19219d4a58fb025eff`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.34`

```console
$ docker pull mariadb@sha256:46ea18e1cec48d9f4603ad79f6e8f2a8f0db027ecb5305c98fffc480e4e5a4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.34` - linux; amd64

```console
$ docker pull mariadb@sha256:746344f47d74980554c2f1b24a0c2f65fec2719f25fc398bbf4605e4685fa57a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119578846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9915758b9cd6107dc541aa1c83ca4c35b8a712be26a1930778feffb6f2d320fb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:28:28 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 14 Mar 2018 05:28:28 GMT
ENV MARIADB_VERSION=10.0.34+maria-1~jessie
# Wed, 14 Mar 2018 05:28:29 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:29:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:29:18 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:29:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:29:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:29:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:29:20 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:29:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3465287b14197721334e2ab3d2cf6992c368a2003e0615db1d8286e306b2334e`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1053cde864036d0dded4e69f3f505432e59ffec4423746ac85b9c795a9b6be`  
		Last Modified: Wed, 14 Mar 2018 05:52:36 GMT  
		Size: 59.3 MB (59286794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0f497b8e642aa3a5532464ff81830eb2889da70ac012e88095adfcbc6dbbaf`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42a0a2e5bd1ca0ecdc85dee4847fc1aacaaceec8cbe70f19219d4a58fb025eff`  
		Last Modified: Wed, 14 Mar 2018 05:52:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:711bca6e7816b868b0c22acad5385126db73a1fc4ec783fb56c7661a4afc8eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:fb9fedf8bfa0487056b41e9a98349934e673ffed5cfb1d0bff042cff9a97d769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135207471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f2454ac126d4f182138138d32dc9d597098bf5f67a3fb5f6c4c4c77a4dcbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:26:21 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 14 Mar 2018 05:26:21 GMT
ENV MARIADB_VERSION=10.1.31+maria-1~jessie
# Wed, 14 Mar 2018 05:26:22 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:27:12 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:27:12 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:27:13 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:27:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:27:14 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:27:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c6d2b7df624fe992299b11aaf9ead855b9410a5c386a57704fb1c1db3e1a68`  
		Last Modified: Wed, 14 Mar 2018 05:51:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb4784cbf853fbcd34e289d2d254330049581a6a4d4e9f777b592d32531d81`  
		Last Modified: Wed, 14 Mar 2018 05:51:42 GMT  
		Size: 74.9 MB (74915420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66804011772133d28a527424f839ab040ac817e8d652e93b62a7f8743abc524e`  
		Last Modified: Wed, 14 Mar 2018 05:51:23 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1815087313f6ae0bc39e2c4483902a518f6d0437237daf139d71bbdf108737`  
		Last Modified: Wed, 14 Mar 2018 05:51:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.31`

```console
$ docker pull mariadb@sha256:711bca6e7816b868b0c22acad5385126db73a1fc4ec783fb56c7661a4afc8eea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.31` - linux; amd64

```console
$ docker pull mariadb@sha256:fb9fedf8bfa0487056b41e9a98349934e673ffed5cfb1d0bff042cff9a97d769
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135207471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58f2454ac126d4f182138138d32dc9d597098bf5f67a3fb5f6c4c4c77a4dcbe8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:26:21 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 14 Mar 2018 05:26:21 GMT
ENV MARIADB_VERSION=10.1.31+maria-1~jessie
# Wed, 14 Mar 2018 05:26:22 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:27:12 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:27:12 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:27:13 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:27:13 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:27:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:27:14 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:27:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54c6d2b7df624fe992299b11aaf9ead855b9410a5c386a57704fb1c1db3e1a68`  
		Last Modified: Wed, 14 Mar 2018 05:51:24 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dceb4784cbf853fbcd34e289d2d254330049581a6a4d4e9f777b592d32531d81`  
		Last Modified: Wed, 14 Mar 2018 05:51:42 GMT  
		Size: 74.9 MB (74915420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66804011772133d28a527424f839ab040ac817e8d652e93b62a7f8743abc524e`  
		Last Modified: Wed, 14 Mar 2018 05:51:23 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb1815087313f6ae0bc39e2c4483902a518f6d0437237daf139d71bbdf108737`  
		Last Modified: Wed, 14 Mar 2018 05:51:23 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:f5e93cd79cb34d7a34da1af1e11ef9bfdbcdac629f4a50c59c69b913b061fea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b0e1344a2ea9460ee5a1b4d00f4eb48e3048f6236cf42eb6a5ae3a85fde1ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5e726062ce0de1dc30139ee7d8c72583ea93d721a1b56d0fffcb6dfcf087b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Wed, 14 Mar 2018 05:25:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:26:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:26:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:26:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:26:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:26:04 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:26:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3d3e597bc08c3a08a2c2d9506c459ea83882f9e5c726373e6dbeae702f7ed4`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717718e492b11f31d2869cfd43c56ad593c20c0d8f5bb86fe84369b602678bae`  
		Last Modified: Wed, 14 Mar 2018 05:50:12 GMT  
		Size: 75.0 MB (74988610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba2794b394b2c43fbd80ec9d244dbd6e0ec9042b033ee0b5de98dfa6dde233d`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b4021503ca449f75f6719cc886e88822b88118a4c407238628f7dad3e396c`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.13`

```console
$ docker pull mariadb@sha256:f5e93cd79cb34d7a34da1af1e11ef9bfdbcdac629f4a50c59c69b913b061fea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.13` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b0e1344a2ea9460ee5a1b4d00f4eb48e3048f6236cf42eb6a5ae3a85fde1ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5e726062ce0de1dc30139ee7d8c72583ea93d721a1b56d0fffcb6dfcf087b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Wed, 14 Mar 2018 05:25:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:26:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:26:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:26:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:26:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:26:04 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:26:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3d3e597bc08c3a08a2c2d9506c459ea83882f9e5c726373e6dbeae702f7ed4`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717718e492b11f31d2869cfd43c56ad593c20c0d8f5bb86fe84369b602678bae`  
		Last Modified: Wed, 14 Mar 2018 05:50:12 GMT  
		Size: 75.0 MB (74988610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba2794b394b2c43fbd80ec9d244dbd6e0ec9042b033ee0b5de98dfa6dde233d`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b4021503ca449f75f6719cc886e88822b88118a4c407238628f7dad3e396c`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:26614427d1830bbcbd5995982048ed30bafcd7060b5622d48d728a4438ac48a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:dff91205a943e862da9e3a0dbd57e709b113bd806bb7ec6058a886898de16a9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135874596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2330885168d555b7b089046456a1e6323704678cacb92c143fd8ba14a359f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:23:37 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 14 Mar 2018 05:23:37 GMT
ENV MARIADB_VERSION=10.3.5+maria~jessie
# Wed, 14 Mar 2018 05:23:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:24:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:24:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:24:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:24:20 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:24:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45c962bf8b1870d13a405a7b98e69339111eb86302d94963815c2677f6c425a`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569376a6b56d6a820f983077a2328185359a4f1db06b3f0ee31275fd7c1335ed`  
		Last Modified: Wed, 14 Mar 2018 05:46:38 GMT  
		Size: 75.6 MB (75582544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b84cc883d478be29837b428863f7c4d27b0b81dadf8b968a66a4a0433a3597`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ceb361e7bbad5e119c845705afa4c8d233aed1a29a097981d982c2d978ef3`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.5`

```console
$ docker pull mariadb@sha256:26614427d1830bbcbd5995982048ed30bafcd7060b5622d48d728a4438ac48a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.5` - linux; amd64

```console
$ docker pull mariadb@sha256:dff91205a943e862da9e3a0dbd57e709b113bd806bb7ec6058a886898de16a9e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135874596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b2330885168d555b7b089046456a1e6323704678cacb92c143fd8ba14a359f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:23:37 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 14 Mar 2018 05:23:37 GMT
ENV MARIADB_VERSION=10.3.5+maria~jessie
# Wed, 14 Mar 2018 05:23:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:24:18 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:24:19 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:24:19 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:24:20 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:24:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:24:20 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:24:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e45c962bf8b1870d13a405a7b98e69339111eb86302d94963815c2677f6c425a`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:569376a6b56d6a820f983077a2328185359a4f1db06b3f0ee31275fd7c1335ed`  
		Last Modified: Wed, 14 Mar 2018 05:46:38 GMT  
		Size: 75.6 MB (75582544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14b84cc883d478be29837b428863f7c4d27b0b81dadf8b968a66a4a0433a3597`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 2.6 KB (2552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ceb361e7bbad5e119c845705afa4c8d233aed1a29a097981d982c2d978ef3`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:82fdb2fe865ae71fb5caaaa357d66569e6e6492a07bd901c736f87289a3d295f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:c88862c6062c13cd17960b8c700098a4dad2fe1131c5ea0748ace805c59ec619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98165229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678b749f69f4652770bee8e849c934731d5a54f0323fa9330e06d4dd11113d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:29:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:29:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:30:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:30:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:30:13 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:30:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Mar 2018 05:30:14 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Wed, 14 Mar 2018 05:30:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:30:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:30:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:30:30 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:30:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:30:31 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d5817a79f87241872dfef77785049a1f865c3fa0acc369df4f1194d1863d2b`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a270f0327f321683b2ef5a69f630c5b316fb9b65af3e89d02e494c301701401`  
		Last Modified: Wed, 14 Mar 2018 05:53:17 GMT  
		Size: 939.6 KB (939605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911f94a14d77391d04fe008384fa879af62397763f890cf3617f4aa17be23ec9`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114588764b3b9738fbdb7d97eeeff164b2d408322514a718772444242304d179`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 6.0 MB (5993903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dcaee5ec4a3a877d9c4cb3a80e7582113336866fe869e2a570b8bec7705f18`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb0a9fe356a75c9405dc2846e29234ca07264f86b885cd79d31a016b3956579`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46a33e0770acd807856f4157fe4aec38083aa28d5834e0f4dccf2da7856ea9c`  
		Last Modified: Wed, 14 Mar 2018 05:53:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a064a7c02a59c6c91b959c1ea4c0d52391b45a11bda1bc3b23370f36b007423a`  
		Last Modified: Wed, 14 Mar 2018 05:53:29 GMT  
		Size: 53.1 MB (53094199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4945a744ccf7eb179c763a0a9393a2e1abc727957209d2b76e0c5fec686b67`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccdf575cafadabd921450bb0ac2e7b8f74229572d5f6b950c1c6a700e2f3290`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:82fdb2fe865ae71fb5caaaa357d66569e6e6492a07bd901c736f87289a3d295f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:c88862c6062c13cd17960b8c700098a4dad2fe1131c5ea0748ace805c59ec619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98165229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678b749f69f4652770bee8e849c934731d5a54f0323fa9330e06d4dd11113d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:29:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:29:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:30:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:30:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:30:13 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:30:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Mar 2018 05:30:14 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Wed, 14 Mar 2018 05:30:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:30:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:30:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:30:30 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:30:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:30:31 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d5817a79f87241872dfef77785049a1f865c3fa0acc369df4f1194d1863d2b`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a270f0327f321683b2ef5a69f630c5b316fb9b65af3e89d02e494c301701401`  
		Last Modified: Wed, 14 Mar 2018 05:53:17 GMT  
		Size: 939.6 KB (939605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911f94a14d77391d04fe008384fa879af62397763f890cf3617f4aa17be23ec9`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114588764b3b9738fbdb7d97eeeff164b2d408322514a718772444242304d179`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 6.0 MB (5993903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dcaee5ec4a3a877d9c4cb3a80e7582113336866fe869e2a570b8bec7705f18`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb0a9fe356a75c9405dc2846e29234ca07264f86b885cd79d31a016b3956579`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46a33e0770acd807856f4157fe4aec38083aa28d5834e0f4dccf2da7856ea9c`  
		Last Modified: Wed, 14 Mar 2018 05:53:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a064a7c02a59c6c91b959c1ea4c0d52391b45a11bda1bc3b23370f36b007423a`  
		Last Modified: Wed, 14 Mar 2018 05:53:29 GMT  
		Size: 53.1 MB (53094199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4945a744ccf7eb179c763a0a9393a2e1abc727957209d2b76e0c5fec686b67`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccdf575cafadabd921450bb0ac2e7b8f74229572d5f6b950c1c6a700e2f3290`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.59`

```console
$ docker pull mariadb@sha256:82fdb2fe865ae71fb5caaaa357d66569e6e6492a07bd901c736f87289a3d295f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.59` - linux; amd64

```console
$ docker pull mariadb@sha256:c88862c6062c13cd17960b8c700098a4dad2fe1131c5ea0748ace805c59ec619
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98165229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:678b749f69f4652770bee8e849c934731d5a54f0323fa9330e06d4dd11113d27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:29:42 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:29:43 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:29:59 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:30:00 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:30:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:30:10 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:30:12 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:30:13 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:30:13 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 14 Mar 2018 05:30:14 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Wed, 14 Mar 2018 05:30:14 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:30:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:30:29 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:30:30 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:30:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:30:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:30:31 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:30:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d5817a79f87241872dfef77785049a1f865c3fa0acc369df4f1194d1863d2b`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 1.7 KB (1740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a270f0327f321683b2ef5a69f630c5b316fb9b65af3e89d02e494c301701401`  
		Last Modified: Wed, 14 Mar 2018 05:53:17 GMT  
		Size: 939.6 KB (939605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:911f94a14d77391d04fe008384fa879af62397763f890cf3617f4aa17be23ec9`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:114588764b3b9738fbdb7d97eeeff164b2d408322514a718772444242304d179`  
		Last Modified: Wed, 14 Mar 2018 05:53:18 GMT  
		Size: 6.0 MB (5993903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1dcaee5ec4a3a877d9c4cb3a80e7582113336866fe869e2a570b8bec7705f18`  
		Last Modified: Wed, 14 Mar 2018 05:53:16 GMT  
		Size: 20.9 KB (20862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb0a9fe356a75c9405dc2846e29234ca07264f86b885cd79d31a016b3956579`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a46a33e0770acd807856f4157fe4aec38083aa28d5834e0f4dccf2da7856ea9c`  
		Last Modified: Wed, 14 Mar 2018 05:53:15 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a064a7c02a59c6c91b959c1ea4c0d52391b45a11bda1bc3b23370f36b007423a`  
		Last Modified: Wed, 14 Mar 2018 05:53:29 GMT  
		Size: 53.1 MB (53094199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a4945a744ccf7eb179c763a0a9393a2e1abc727957209d2b76e0c5fec686b67`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ccdf575cafadabd921450bb0ac2e7b8f74229572d5f6b950c1c6a700e2f3290`  
		Last Modified: Wed, 14 Mar 2018 05:53:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:f5e93cd79cb34d7a34da1af1e11ef9bfdbcdac629f4a50c59c69b913b061fea7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:e3b0e1344a2ea9460ee5a1b4d00f4eb48e3048f6236cf42eb6a5ae3a85fde1ea
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5e726062ce0de1dc30139ee7d8c72583ea93d721a1b56d0fffcb6dfcf087b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:22:25 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 05:22:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 14 Mar 2018 05:23:03 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 05:23:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 05:23:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:23:30 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 14 Mar 2018 05:23:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 14 Mar 2018 05:23:37 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 14 Mar 2018 05:25:14 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Wed, 14 Mar 2018 05:25:15 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 14 Mar 2018 05:26:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 05:26:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 05:26:03 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Wed, 14 Mar 2018 05:26:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 14 Mar 2018 05:26:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 05:26:04 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 05:26:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d8bdca4f3e3d03817be0249f4df6c3ab8e80c95011ca20e25bdfaeca3c3e3c`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 2.1 KB (2089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f09e820cce223b7c31237843dea7c4549a71e038009c708ec4176db816d324`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 985.2 KB (985225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5390f1fe45549bc2c3f19eec45e92772ebfb78dcf92902939d573badf6f3793b`  
		Last Modified: Wed, 14 Mar 2018 05:46:21 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3f1706a74104397701affa1bb315a299b7eb2286e872812bb65e089aeaf748`  
		Last Modified: Wed, 14 Mar 2018 05:46:22 GMT  
		Size: 6.7 MB (6671963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2942f66426eaad5ccb8a5d0c1c5ae3e6eec90df5d9e6b408067c0ea960898ead`  
		Last Modified: Wed, 14 Mar 2018 05:46:20 GMT  
		Size: 20.8 KB (20832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ee11d39c75377bb9b8344b463364f8b2f70a608e2ceffa33d4f2499754ec98`  
		Last Modified: Wed, 14 Mar 2018 05:46:18 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f3d3e597bc08c3a08a2c2d9506c459ea83882f9e5c726373e6dbeae702f7ed4`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:717718e492b11f31d2869cfd43c56ad593c20c0d8f5bb86fe84369b602678bae`  
		Last Modified: Wed, 14 Mar 2018 05:50:12 GMT  
		Size: 75.0 MB (74988610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba2794b394b2c43fbd80ec9d244dbd6e0ec9042b033ee0b5de98dfa6dde233d`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66b4021503ca449f75f6719cc886e88822b88118a4c407238628f7dad3e396c`  
		Last Modified: Wed, 14 Mar 2018 05:49:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
