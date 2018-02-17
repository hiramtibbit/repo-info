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
-	[`mariadb:10.3.4`](#mariadb1034)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.59`](#mariadb5559)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:d5f0bc88ba397233677ff75b7b1de693d5e84527ecf2b4f59adebf8d0bcac3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:02df012048c820331f2aed41acae569cb674ccd86b38cd54543c74e31a73ae55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dd445713ae794c0ae6261e947fff413cae4f4dfb2061a13f85f9faab8aceda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:07:31 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 17 Feb 2018 08:07:32 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Sat, 17 Feb 2018 08:07:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:08:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:08:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:08:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:08:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:08:17 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:08:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd51d7af15515b05689ec1b8b073dceb6752985536a36479e61769eb60d67ba3`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf37448a3b37324f662da5c60ce3281197d712885ba5e7242f0ebf668879dd9`  
		Last Modified: Sat, 17 Feb 2018 08:18:14 GMT  
		Size: 75.0 MB (74988680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0519e00d29e56969f610d90d7b5fde6da6ae9d2572bb01d1397accd83c1add69`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f83e3487101572893bca29a89bd868abaa9004f37e1db10f99cdc9220890d1f`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:14ff7714e0aa3d01d2de153a5378f5bf03008de1c007af5bf8730a7455e973d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:f59979797037800479fc1da1a439b66c3a73a243c34028d27b7bb9ea7c34a371
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119578562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3952d919d5a449a0d52444c2d17b8b47187c144b6074ff1f8d2806327fe98bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:10:09 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 17 Feb 2018 08:10:09 GMT
ENV MARIADB_VERSION=10.0.34+maria-1~jessie
# Sat, 17 Feb 2018 08:10:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:10:55 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:16:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:16:23 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:16:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:16:24 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:16:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0d7653103e71d081a9a3391ad4a35bae3570cf25aab2bf5adc68a83aae78e0`  
		Last Modified: Sat, 17 Feb 2018 08:20:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1af410eaf0e0c66d1529b549797de439ef2bcdd5d29dee379eed0f25f4dfb`  
		Last Modified: Sat, 17 Feb 2018 08:20:32 GMT  
		Size: 59.3 MB (59286775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c75bcc7027af33a9eec1a17d534edfc02dbc8edd121a8357359cd897876925`  
		Last Modified: Sat, 17 Feb 2018 08:20:19 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921e863b12a1f6531565e12d36019294637701faa46e61fbfaa593207c9e7bac`  
		Last Modified: Sat, 17 Feb 2018 08:20:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.34`

```console
$ docker pull mariadb@sha256:14ff7714e0aa3d01d2de153a5378f5bf03008de1c007af5bf8730a7455e973d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.34` - linux; amd64

```console
$ docker pull mariadb@sha256:f59979797037800479fc1da1a439b66c3a73a243c34028d27b7bb9ea7c34a371
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.6 MB (119578562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3952d919d5a449a0d52444c2d17b8b47187c144b6074ff1f8d2806327fe98bf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:10:09 GMT
ENV MARIADB_MAJOR=10.0
# Sat, 17 Feb 2018 08:10:09 GMT
ENV MARIADB_VERSION=10.0.34+maria-1~jessie
# Sat, 17 Feb 2018 08:10:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:10:55 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:16:22 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:16:23 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:16:23 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:16:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:16:24 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:16:24 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d0d7653103e71d081a9a3391ad4a35bae3570cf25aab2bf5adc68a83aae78e0`  
		Last Modified: Sat, 17 Feb 2018 08:20:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3c1af410eaf0e0c66d1529b549797de439ef2bcdd5d29dee379eed0f25f4dfb`  
		Last Modified: Sat, 17 Feb 2018 08:20:32 GMT  
		Size: 59.3 MB (59286775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39c75bcc7027af33a9eec1a17d534edfc02dbc8edd121a8357359cd897876925`  
		Last Modified: Sat, 17 Feb 2018 08:20:19 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921e863b12a1f6531565e12d36019294637701faa46e61fbfaa593207c9e7bac`  
		Last Modified: Sat, 17 Feb 2018 08:20:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:5bd6b15a15966dbafc3e6fddbdbe6e804a282b5d7e8643adda3ec9df828d2349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:ef9b9feeec2e4f901d4c9eb4feec5c277e8a5f553e6112bb904b5e8efcfcfb63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135207478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d79d0d48b9c887f481e41dfafaf1ff570b108fdcdf9a89b0856abbc7698763a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:08:44 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 17 Feb 2018 08:08:44 GMT
ENV MARIADB_VERSION=10.1.31+maria-1~jessie
# Sat, 17 Feb 2018 08:08:45 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:09:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:09:39 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:09:39 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:09:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:09:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:09:41 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:09:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8152161586c1dbc4cab3cb173f5eea6ac9ce3bd6c85f6846cb98f26b31015be2`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bd6b8b73d6c18e55bc9b57606174134a91afb5330d3d55611769c605f3faea`  
		Last Modified: Sat, 17 Feb 2018 08:19:37 GMT  
		Size: 74.9 MB (74915694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb3c647099b09095bb3c2c5a860eebdd88ef777834324ba06d4b4e2015908a`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79cc28dda7ab6b5974f767b86dde6109a65f912da1707f93d85c71b79bba5ba`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.31`

```console
$ docker pull mariadb@sha256:5bd6b15a15966dbafc3e6fddbdbe6e804a282b5d7e8643adda3ec9df828d2349
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.31` - linux; amd64

```console
$ docker pull mariadb@sha256:ef9b9feeec2e4f901d4c9eb4feec5c277e8a5f553e6112bb904b5e8efcfcfb63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.2 MB (135207478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d79d0d48b9c887f481e41dfafaf1ff570b108fdcdf9a89b0856abbc7698763a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:08:44 GMT
ENV MARIADB_MAJOR=10.1
# Sat, 17 Feb 2018 08:08:44 GMT
ENV MARIADB_VERSION=10.1.31+maria-1~jessie
# Sat, 17 Feb 2018 08:08:45 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:09:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:09:39 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:09:39 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:09:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:09:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:09:41 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:09:41 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8152161586c1dbc4cab3cb173f5eea6ac9ce3bd6c85f6846cb98f26b31015be2`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84bd6b8b73d6c18e55bc9b57606174134a91afb5330d3d55611769c605f3faea`  
		Last Modified: Sat, 17 Feb 2018 08:19:37 GMT  
		Size: 74.9 MB (74915694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3fb3c647099b09095bb3c2c5a860eebdd88ef777834324ba06d4b4e2015908a`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 2.6 KB (2553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79cc28dda7ab6b5974f767b86dde6109a65f912da1707f93d85c71b79bba5ba`  
		Last Modified: Sat, 17 Feb 2018 08:19:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:d5f0bc88ba397233677ff75b7b1de693d5e84527ecf2b4f59adebf8d0bcac3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:02df012048c820331f2aed41acae569cb674ccd86b38cd54543c74e31a73ae55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dd445713ae794c0ae6261e947fff413cae4f4dfb2061a13f85f9faab8aceda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:07:31 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 17 Feb 2018 08:07:32 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Sat, 17 Feb 2018 08:07:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:08:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:08:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:08:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:08:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:08:17 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:08:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd51d7af15515b05689ec1b8b073dceb6752985536a36479e61769eb60d67ba3`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf37448a3b37324f662da5c60ce3281197d712885ba5e7242f0ebf668879dd9`  
		Last Modified: Sat, 17 Feb 2018 08:18:14 GMT  
		Size: 75.0 MB (74988680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0519e00d29e56969f610d90d7b5fde6da6ae9d2572bb01d1397accd83c1add69`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f83e3487101572893bca29a89bd868abaa9004f37e1db10f99cdc9220890d1f`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.13`

```console
$ docker pull mariadb@sha256:d5f0bc88ba397233677ff75b7b1de693d5e84527ecf2b4f59adebf8d0bcac3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.13` - linux; amd64

```console
$ docker pull mariadb@sha256:02df012048c820331f2aed41acae569cb674ccd86b38cd54543c74e31a73ae55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dd445713ae794c0ae6261e947fff413cae4f4dfb2061a13f85f9faab8aceda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:07:31 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 17 Feb 2018 08:07:32 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Sat, 17 Feb 2018 08:07:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:08:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:08:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:08:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:08:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:08:17 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:08:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd51d7af15515b05689ec1b8b073dceb6752985536a36479e61769eb60d67ba3`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf37448a3b37324f662da5c60ce3281197d712885ba5e7242f0ebf668879dd9`  
		Last Modified: Sat, 17 Feb 2018 08:18:14 GMT  
		Size: 75.0 MB (74988680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0519e00d29e56969f610d90d7b5fde6da6ae9d2572bb01d1397accd83c1add69`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f83e3487101572893bca29a89bd868abaa9004f37e1db10f99cdc9220890d1f`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:888b9d0f411090bf9a3e7c1c652cb9d905f362704c9eb2721bfc74a9598df219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:6a6c3696a54908c9f9f295bac1b69d9b6c06ef9e934a63e4232b975fb1067d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135857635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32414f7e3afd3d3071d1a8589db830b3103c4ce11389d7749e246589ca372962`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:04:34 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 17 Feb 2018 08:04:34 GMT
ENV MARIADB_VERSION=10.3.4+maria~jessie
# Sat, 17 Feb 2018 08:04:35 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:05:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:07:00 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:07:00 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:07:02 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:07:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb24596a53f95c366c705270314cca40359feccde6ecf95a89a514b6cb4746`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e89e32af98f9e0abef16c4609404eb93e30265a2aee8ded42e48c7b74283c57`  
		Last Modified: Sat, 17 Feb 2018 08:17:18 GMT  
		Size: 75.6 MB (75565851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ef103d8feab03316cd53a9dd3d3cb626b53b517ab7664141dfafc4628bebe`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d117301c14f00d8e411876fcbce22124cb8a2c0084282ce3c91b7352485e2f52`  
		Last Modified: Sat, 17 Feb 2018 08:17:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.4`

```console
$ docker pull mariadb@sha256:888b9d0f411090bf9a3e7c1c652cb9d905f362704c9eb2721bfc74a9598df219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.4` - linux; amd64

```console
$ docker pull mariadb@sha256:6a6c3696a54908c9f9f295bac1b69d9b6c06ef9e934a63e4232b975fb1067d15
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135857635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32414f7e3afd3d3071d1a8589db830b3103c4ce11389d7749e246589ca372962`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:04:34 GMT
ENV MARIADB_MAJOR=10.3
# Sat, 17 Feb 2018 08:04:34 GMT
ENV MARIADB_VERSION=10.3.4+maria~jessie
# Sat, 17 Feb 2018 08:04:35 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:05:11 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:07:00 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:07:00 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:07:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:07:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:07:02 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:07:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2fb24596a53f95c366c705270314cca40359feccde6ecf95a89a514b6cb4746`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 321.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e89e32af98f9e0abef16c4609404eb93e30265a2aee8ded42e48c7b74283c57`  
		Last Modified: Sat, 17 Feb 2018 08:17:18 GMT  
		Size: 75.6 MB (75565851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31ef103d8feab03316cd53a9dd3d3cb626b53b517ab7664141dfafc4628bebe`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 2.6 KB (2554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d117301c14f00d8e411876fcbce22124cb8a2c0084282ce3c91b7352485e2f52`  
		Last Modified: Sat, 17 Feb 2018 08:17:01 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:90d9078ce71f404ea09c5cb5c1cade19eeaa9eb335410f52ce17af4a3c149f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:825ede0f7c3d039604b3801b2822b3f8618d6a923bea009051b3336deefd64ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98162221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd6bdcc01016d88c822883e0258eed1239d8f63df055a4ac80d54b882b158ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:15:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 15 Feb 2018 03:15:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 03:15:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 03:15:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:15:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 15 Feb 2018 03:15:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 03:16:06 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 15 Feb 2018 03:16:06 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 15 Feb 2018 03:16:07 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Thu, 15 Feb 2018 03:16:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 15 Feb 2018 03:16:22 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 15 Feb 2018 03:16:32 GMT
VOLUME [/var/lib/mysql]
# Thu, 15 Feb 2018 03:16:33 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 15 Feb 2018 03:16:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 03:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 03:16:45 GMT
EXPOSE 3306/tcp
# Thu, 15 Feb 2018 03:16:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e8ac3bce489bd3a8da812f4412ce393a0eec14f5a00f76e678c08ca90044dd`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48449fe85d5fd121cf9187f4d7cdf0bdb406d7ca4a3b4956663c575303ef920`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 939.3 KB (939306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4fe0eebabb232c1dba58c4bf5f4e50c62a1d82c9abef7d3bc0e1ccd8726b4`  
		Last Modified: Thu, 15 Feb 2018 03:17:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcf353bf7d7109349af7a49e2b0016903cdf6e8c294e5245f8c72737ac8648a`  
		Last Modified: Thu, 15 Feb 2018 03:17:24 GMT  
		Size: 6.0 MB (5993674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac3980703df1526e7c6ea8ab924b5a131ad9ae44e234dafe5e94a98e892f30b`  
		Last Modified: Thu, 15 Feb 2018 03:17:21 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e39991c6ab6f808baae212584e7f8d0c03febeb1b262c5e456594a1081d2876`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f41b3d3bed52f88c22d6d11b5146c3579b7ce7d3296d7ff680a1cdc69c559b`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd06e17845f9f8f0619b5d99d7ed00bcc36e61ee92f1f149bdb38452a00c157`  
		Last Modified: Thu, 15 Feb 2018 03:17:28 GMT  
		Size: 53.1 MB (53093420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265a98902cb98ba1b1e36d32f15db69b565e4aefec5d94f65c75b2054d5e4605`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0888a88b458bbb73af9e02935a3da0a16611ab4501791bcc8994c60eaece11a9`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:90d9078ce71f404ea09c5cb5c1cade19eeaa9eb335410f52ce17af4a3c149f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:825ede0f7c3d039604b3801b2822b3f8618d6a923bea009051b3336deefd64ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98162221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd6bdcc01016d88c822883e0258eed1239d8f63df055a4ac80d54b882b158ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:15:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 15 Feb 2018 03:15:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 03:15:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 03:15:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:15:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 15 Feb 2018 03:15:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 03:16:06 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 15 Feb 2018 03:16:06 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 15 Feb 2018 03:16:07 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Thu, 15 Feb 2018 03:16:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 15 Feb 2018 03:16:22 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 15 Feb 2018 03:16:32 GMT
VOLUME [/var/lib/mysql]
# Thu, 15 Feb 2018 03:16:33 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 15 Feb 2018 03:16:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 03:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 03:16:45 GMT
EXPOSE 3306/tcp
# Thu, 15 Feb 2018 03:16:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e8ac3bce489bd3a8da812f4412ce393a0eec14f5a00f76e678c08ca90044dd`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48449fe85d5fd121cf9187f4d7cdf0bdb406d7ca4a3b4956663c575303ef920`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 939.3 KB (939306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4fe0eebabb232c1dba58c4bf5f4e50c62a1d82c9abef7d3bc0e1ccd8726b4`  
		Last Modified: Thu, 15 Feb 2018 03:17:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcf353bf7d7109349af7a49e2b0016903cdf6e8c294e5245f8c72737ac8648a`  
		Last Modified: Thu, 15 Feb 2018 03:17:24 GMT  
		Size: 6.0 MB (5993674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac3980703df1526e7c6ea8ab924b5a131ad9ae44e234dafe5e94a98e892f30b`  
		Last Modified: Thu, 15 Feb 2018 03:17:21 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e39991c6ab6f808baae212584e7f8d0c03febeb1b262c5e456594a1081d2876`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f41b3d3bed52f88c22d6d11b5146c3579b7ce7d3296d7ff680a1cdc69c559b`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd06e17845f9f8f0619b5d99d7ed00bcc36e61ee92f1f149bdb38452a00c157`  
		Last Modified: Thu, 15 Feb 2018 03:17:28 GMT  
		Size: 53.1 MB (53093420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265a98902cb98ba1b1e36d32f15db69b565e4aefec5d94f65c75b2054d5e4605`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0888a88b458bbb73af9e02935a3da0a16611ab4501791bcc8994c60eaece11a9`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.59`

```console
$ docker pull mariadb@sha256:90d9078ce71f404ea09c5cb5c1cade19eeaa9eb335410f52ce17af4a3c149f7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.59` - linux; amd64

```console
$ docker pull mariadb@sha256:825ede0f7c3d039604b3801b2822b3f8618d6a923bea009051b3336deefd64ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98162221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd6bdcc01016d88c822883e0258eed1239d8f63df055a4ac80d54b882b158ad`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:05:40 GMT
ADD file:ea1e68682553e8bdf553ace007e62eaa11f656270c4c57fc0e50777961bdb0f8 in / 
# Thu, 15 Feb 2018 02:05:49 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:15:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Thu, 15 Feb 2018 03:15:17 GMT
ENV GOSU_VERSION=1.10
# Thu, 15 Feb 2018 03:15:33 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 03:15:33 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Thu, 15 Feb 2018 03:15:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:15:52 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Thu, 15 Feb 2018 03:15:55 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Thu, 15 Feb 2018 03:16:06 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Thu, 15 Feb 2018 03:16:06 GMT
ENV MARIADB_MAJOR=5.5
# Thu, 15 Feb 2018 03:16:07 GMT
ENV MARIADB_VERSION=5.5.59+maria-1~wheezy
# Thu, 15 Feb 2018 03:16:07 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 15 Feb 2018 03:16:22 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 15 Feb 2018 03:16:32 GMT
VOLUME [/var/lib/mysql]
# Thu, 15 Feb 2018 03:16:33 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Thu, 15 Feb 2018 03:16:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Thu, 15 Feb 2018 03:16:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 15 Feb 2018 03:16:45 GMT
EXPOSE 3306/tcp
# Thu, 15 Feb 2018 03:16:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:98b70bf1494f120c94bbfc873e70bb8842de7285b258e3a93cb32ce96a3173eb`  
		Last Modified: Thu, 15 Feb 2018 02:32:07 GMT  
		Size: 38.1 MB (38109787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08e8ac3bce489bd3a8da812f4412ce393a0eec14f5a00f76e678c08ca90044dd`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48449fe85d5fd121cf9187f4d7cdf0bdb406d7ca4a3b4956663c575303ef920`  
		Last Modified: Thu, 15 Feb 2018 03:17:23 GMT  
		Size: 939.3 KB (939306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4fe0eebabb232c1dba58c4bf5f4e50c62a1d82c9abef7d3bc0e1ccd8726b4`  
		Last Modified: Thu, 15 Feb 2018 03:17:22 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dcf353bf7d7109349af7a49e2b0016903cdf6e8c294e5245f8c72737ac8648a`  
		Last Modified: Thu, 15 Feb 2018 03:17:24 GMT  
		Size: 6.0 MB (5993674 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ac3980703df1526e7c6ea8ab924b5a131ad9ae44e234dafe5e94a98e892f30b`  
		Last Modified: Thu, 15 Feb 2018 03:17:21 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e39991c6ab6f808baae212584e7f8d0c03febeb1b262c5e456594a1081d2876`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 319.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6f41b3d3bed52f88c22d6d11b5146c3579b7ce7d3296d7ff680a1cdc69c559b`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fd06e17845f9f8f0619b5d99d7ed00bcc36e61ee92f1f149bdb38452a00c157`  
		Last Modified: Thu, 15 Feb 2018 03:17:28 GMT  
		Size: 53.1 MB (53093420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265a98902cb98ba1b1e36d32f15db69b565e4aefec5d94f65c75b2054d5e4605`  
		Last Modified: Thu, 15 Feb 2018 03:17:19 GMT  
		Size: 2.5 KB (2548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0888a88b458bbb73af9e02935a3da0a16611ab4501791bcc8994c60eaece11a9`  
		Last Modified: Thu, 15 Feb 2018 03:17:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:d5f0bc88ba397233677ff75b7b1de693d5e84527ecf2b4f59adebf8d0bcac3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:02df012048c820331f2aed41acae569cb674ccd86b38cd54543c74e31a73ae55
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.3 MB (135280463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1dd445713ae794c0ae6261e947fff413cae4f4dfb2061a13f85f9faab8aceda`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 08:03:50 GMT
ENV GOSU_VERSION=1.10
# Sat, 17 Feb 2018 08:04:11 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 17 Feb 2018 08:04:12 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:04:29 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Sat, 17 Feb 2018 08:04:33 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Sat, 17 Feb 2018 08:04:34 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Sat, 17 Feb 2018 08:07:31 GMT
ENV MARIADB_MAJOR=10.2
# Sat, 17 Feb 2018 08:07:32 GMT
ENV MARIADB_VERSION=10.2.13+maria~jessie
# Sat, 17 Feb 2018 08:07:33 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Sat, 17 Feb 2018 08:08:06 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:08:16 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:08:16 GMT
COPY file:d559178e6a2929e36791c6a1fa232dc4ac4298ecc446d38972ee1d2a58e30621 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:08:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Sat, 17 Feb 2018 08:08:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:08:17 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:08:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e86691d483c1c6ea1e788bfe7aecb06e79886ec5fffdcfffd7b9f3505100e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f621b14a80a5dcd54f7fa61d5cb63b7ef5c3c8f14371c8e7f9fc22eb0ca2e8`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 985.2 KB (985222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b3f1b17db07aae783db4b7ec507e010b8e52c0afce24137b4015a26bd0461f6`  
		Last Modified: Sat, 17 Feb 2018 08:17:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:add1151625d93421acaf319f3de3d5b3e10dcaa52b1a12b8ddeb818d59d39b29`  
		Last Modified: Sat, 17 Feb 2018 08:17:04 GMT  
		Size: 6.7 MB (6671930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40e879009a8651bc9035c7b885006e25bbb64ad2f2b8429fab484405151642e`  
		Last Modified: Sat, 17 Feb 2018 08:17:02 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f888e49f29bcb507349d1f830503a9f05a7d1e08bcd8a077a314bff79c341e6`  
		Last Modified: Sat, 17 Feb 2018 08:17:00 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd51d7af15515b05689ec1b8b073dceb6752985536a36479e61769eb60d67ba3`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf37448a3b37324f662da5c60ce3281197d712885ba5e7242f0ebf668879dd9`  
		Last Modified: Sat, 17 Feb 2018 08:18:14 GMT  
		Size: 75.0 MB (74988680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0519e00d29e56969f610d90d7b5fde6da6ae9d2572bb01d1397accd83c1add69`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 2.6 KB (2551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f83e3487101572893bca29a89bd868abaa9004f37e1db10f99cdc9220890d1f`  
		Last Modified: Sat, 17 Feb 2018 08:17:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
