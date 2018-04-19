<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.34`](#mariadb10034)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.32`](#mariadb10132)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.14`](#mariadb10214)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.6`](#mariadb1036)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.59`](#mariadb5559)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:6135f5b851e7fe263dcf0edf3480cdab1ab28c4287e867c5d83fbe967412ea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:5929c4894d8a72c3891b8c35f2dfda9e7c414f122fb2a2065a626402fc0c2f53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135338008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca06ca3d8fad202d349385313610fa5c089c6471f060c68ca34075de069ab1dc`
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
# Fri, 30 Mar 2018 20:19:52 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Fri, 30 Mar 2018 20:19:53 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:20:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:20:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:20:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:20:47 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:20:47 GMT
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
	-	`sha256:590c46ef722b41264c9996a9c69e215002ca30910a58744f6b9c6cef9a7ea0e4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb4b9666e5c3a0347399a9aa9831bfab98eb3c29a575fc59db050675b51459`  
		Last Modified: Fri, 30 Mar 2018 20:53:43 GMT  
		Size: 75.0 MB (75045952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc883f98a064559f5d1943dc353bf24b7a64961c8c0eb7514cdb49efeb7751c4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bee61bc1e3f5efea26e4f704ad186883f596e51c106be8e2dcc5f3794f76e`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
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
$ docker pull mariadb@sha256:6e545933369f30ec92678df835d37821ab7b8501fce189cbff4ec26e34e8b419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:9099993ec6487382b44e23a2c1cf2a897c925e127c736f993bac7b0570dd5a12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135268642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811985d76d84a7a9c80b97644f3986182758ba4f12877979eb3c967ea2a8f148`
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
# Fri, 30 Mar 2018 20:37:31 GMT
ENV MARIADB_VERSION=10.1.32+maria-1~jessie
# Fri, 30 Mar 2018 20:37:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:38:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:38:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:38:33 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:38:34 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:38:35 GMT
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
	-	`sha256:5c39d162b98347162c37d60f8d10e05bfc905d7a31b8437cb686e3b040d0c149`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56be2557651f1a70e031ca20e1d86322e504c769d69b35862ef577ec5d1cc549`  
		Last Modified: Fri, 30 Mar 2018 21:24:08 GMT  
		Size: 75.0 MB (74976587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323914290af968345998dcf5df0a1909b156d26537b2b629cca2d68a66a5343c`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af64860b9f2eac066fd328fd78e1ec73fd613267e1453893584e2719334b63c1`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.32`

```console
$ docker pull mariadb@sha256:6e545933369f30ec92678df835d37821ab7b8501fce189cbff4ec26e34e8b419
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.32` - linux; amd64

```console
$ docker pull mariadb@sha256:9099993ec6487382b44e23a2c1cf2a897c925e127c736f993bac7b0570dd5a12
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135268642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:811985d76d84a7a9c80b97644f3986182758ba4f12877979eb3c967ea2a8f148`
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
# Fri, 30 Mar 2018 20:37:31 GMT
ENV MARIADB_VERSION=10.1.32+maria-1~jessie
# Fri, 30 Mar 2018 20:37:32 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:38:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:38:33 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:38:33 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:38:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:38:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:38:34 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:38:35 GMT
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
	-	`sha256:5c39d162b98347162c37d60f8d10e05bfc905d7a31b8437cb686e3b040d0c149`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56be2557651f1a70e031ca20e1d86322e504c769d69b35862ef577ec5d1cc549`  
		Last Modified: Fri, 30 Mar 2018 21:24:08 GMT  
		Size: 75.0 MB (74976587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:323914290af968345998dcf5df0a1909b156d26537b2b629cca2d68a66a5343c`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af64860b9f2eac066fd328fd78e1ec73fd613267e1453893584e2719334b63c1`  
		Last Modified: Fri, 30 Mar 2018 21:23:51 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:6135f5b851e7fe263dcf0edf3480cdab1ab28c4287e867c5d83fbe967412ea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:5929c4894d8a72c3891b8c35f2dfda9e7c414f122fb2a2065a626402fc0c2f53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135338008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca06ca3d8fad202d349385313610fa5c089c6471f060c68ca34075de069ab1dc`
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
# Fri, 30 Mar 2018 20:19:52 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Fri, 30 Mar 2018 20:19:53 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:20:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:20:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:20:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:20:47 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:20:47 GMT
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
	-	`sha256:590c46ef722b41264c9996a9c69e215002ca30910a58744f6b9c6cef9a7ea0e4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb4b9666e5c3a0347399a9aa9831bfab98eb3c29a575fc59db050675b51459`  
		Last Modified: Fri, 30 Mar 2018 20:53:43 GMT  
		Size: 75.0 MB (75045952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc883f98a064559f5d1943dc353bf24b7a64961c8c0eb7514cdb49efeb7751c4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bee61bc1e3f5efea26e4f704ad186883f596e51c106be8e2dcc5f3794f76e`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.14`

```console
$ docker pull mariadb@sha256:6135f5b851e7fe263dcf0edf3480cdab1ab28c4287e867c5d83fbe967412ea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.14` - linux; amd64

```console
$ docker pull mariadb@sha256:5929c4894d8a72c3891b8c35f2dfda9e7c414f122fb2a2065a626402fc0c2f53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135338008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca06ca3d8fad202d349385313610fa5c089c6471f060c68ca34075de069ab1dc`
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
# Fri, 30 Mar 2018 20:19:52 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Fri, 30 Mar 2018 20:19:53 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:20:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:20:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:20:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:20:47 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:20:47 GMT
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
	-	`sha256:590c46ef722b41264c9996a9c69e215002ca30910a58744f6b9c6cef9a7ea0e4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb4b9666e5c3a0347399a9aa9831bfab98eb3c29a575fc59db050675b51459`  
		Last Modified: Fri, 30 Mar 2018 20:53:43 GMT  
		Size: 75.0 MB (75045952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc883f98a064559f5d1943dc353bf24b7a64961c8c0eb7514cdb49efeb7751c4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bee61bc1e3f5efea26e4f704ad186883f596e51c106be8e2dcc5f3794f76e`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:8abc41063e43c7ab76da26703703658aeebfe6d8b836664b4e0d82ce4a949cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:6105ebf72e7403c5a0205acfe505235752ede38ff0201210d57a35aa5e8f9d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137536284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b6a295092e4aeda4c07443581d4122bd749b3047d016ab50809472328309f1`
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
# Thu, 19 Apr 2018 21:09:12 GMT
ENV MARIADB_VERSION=1:10.3.6+maria~jessie
# Thu, 19 Apr 2018 21:09:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 19 Apr 2018 21:10:04 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 19 Apr 2018 21:10:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 19 Apr 2018 21:10:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:10:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 19 Apr 2018 21:10:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:10:06 GMT
EXPOSE 3306/tcp
# Thu, 19 Apr 2018 21:10:06 GMT
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
	-	`sha256:5543a3a0aeaf11243f015c5e5b22b951601daef4f0d0f2f09288aa2d48aac0cc`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b22faf364c81ba359d9906e4388af4428204aeeedece39e49b8af83e26144fd`  
		Last Modified: Thu, 19 Apr 2018 21:27:06 GMT  
		Size: 77.2 MB (77244227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fbc2f8aa12be56c85797ec2781e2ae6b1e984970b95f25c5ba09f6b9097e1f`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032ce3ad151153e1f3a9abe280b1cfff15da7939d4148f91d3a5f84acbf9c887`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.6`

```console
$ docker pull mariadb@sha256:8abc41063e43c7ab76da26703703658aeebfe6d8b836664b4e0d82ce4a949cf4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.6` - linux; amd64

```console
$ docker pull mariadb@sha256:6105ebf72e7403c5a0205acfe505235752ede38ff0201210d57a35aa5e8f9d19
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137536284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0b6a295092e4aeda4c07443581d4122bd749b3047d016ab50809472328309f1`
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
# Thu, 19 Apr 2018 21:09:12 GMT
ENV MARIADB_VERSION=1:10.3.6+maria~jessie
# Thu, 19 Apr 2018 21:09:13 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 19 Apr 2018 21:10:04 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 19 Apr 2018 21:10:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 19 Apr 2018 21:10:05 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 19 Apr 2018 21:10:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 19 Apr 2018 21:10:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 19 Apr 2018 21:10:06 GMT
EXPOSE 3306/tcp
# Thu, 19 Apr 2018 21:10:06 GMT
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
	-	`sha256:5543a3a0aeaf11243f015c5e5b22b951601daef4f0d0f2f09288aa2d48aac0cc`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b22faf364c81ba359d9906e4388af4428204aeeedece39e49b8af83e26144fd`  
		Last Modified: Thu, 19 Apr 2018 21:27:06 GMT  
		Size: 77.2 MB (77244227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08fbc2f8aa12be56c85797ec2781e2ae6b1e984970b95f25c5ba09f6b9097e1f`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032ce3ad151153e1f3a9abe280b1cfff15da7939d4148f91d3a5f84acbf9c887`  
		Last Modified: Thu, 19 Apr 2018 21:26:49 GMT  
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
$ docker pull mariadb@sha256:6135f5b851e7fe263dcf0edf3480cdab1ab28c4287e867c5d83fbe967412ea14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:5929c4894d8a72c3891b8c35f2dfda9e7c414f122fb2a2065a626402fc0c2f53
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135338008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca06ca3d8fad202d349385313610fa5c089c6471f060c68ca34075de069ab1dc`
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
# Fri, 30 Mar 2018 20:19:52 GMT
ENV MARIADB_VERSION=10.2.14+maria~jessie
# Fri, 30 Mar 2018 20:19:53 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 30 Mar 2018 20:20:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 30 Mar 2018 20:20:45 GMT
VOLUME [/var/lib/mysql]
# Fri, 30 Mar 2018 20:20:45 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Fri, 30 Mar 2018 20:20:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 30 Mar 2018 20:20:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 30 Mar 2018 20:20:47 GMT
EXPOSE 3306/tcp
# Fri, 30 Mar 2018 20:20:47 GMT
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
	-	`sha256:590c46ef722b41264c9996a9c69e215002ca30910a58744f6b9c6cef9a7ea0e4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eb4b9666e5c3a0347399a9aa9831bfab98eb3c29a575fc59db050675b51459`  
		Last Modified: Fri, 30 Mar 2018 20:53:43 GMT  
		Size: 75.0 MB (75045952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc883f98a064559f5d1943dc353bf24b7a64961c8c0eb7514cdb49efeb7751c4`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb8bee61bc1e3f5efea26e4f704ad186883f596e51c106be8e2dcc5f3794f76e`  
		Last Modified: Fri, 30 Mar 2018 20:53:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
