<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.35`](#mariadb10035)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.34`](#mariadb10134)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.15`](#mariadb10215)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.7`](#mariadb1037)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.60`](#mariadb5560)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:e254be161ba28b24bcb2cc225d7f4926aafffc1feab1e07f2d2c62898c5ac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:4d7507741314f041d9c86dbc0c35ceaf3d25c3833e3d7899a8a3fcd03670f368
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139186661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724030be3a6e856979876d53a7339392910831a78300fe1522ac1d022016ef76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Wed, 20 Jun 2018 21:21:50 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:23:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:23:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:23:14 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:23:16 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:23:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00792835a5a8758ea83e75c6d62b79405b1cd80d26b93c52db5a319c0a9c894`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93402c3d385b312e470c1c3efdcb6d27576915c53647ef1621bb045d75c2d4`  
		Last Modified: Wed, 20 Jun 2018 21:30:29 GMT  
		Size: 78.9 MB (78898371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c559e39870338c7ed19777f95dc9f10fd5b33aef3312ed37c891caea9a30c`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ad8a6c00120512c23a66a05f8ecd8e2828d597bcc82a742b26c2da911760e`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:5b430fafa1bd46af8dfc2a46a50f0a2ae04fc2996c829253ef253cd4200f0160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:c0151a9949a818d3714ff75b0fef41775472843a0f974545de8f75896a12a534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122684035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf856ffaa192887f95fafb78b8674b9ce27451c78a95cbf6d46eb42bd5d9475`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:26:37 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 20 Jun 2018 21:26:37 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Wed, 20 Jun 2018 21:26:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:28:01 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:28:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:28:02 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:28:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:28:03 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:28:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75b05dcabaf5efbe0e9139fc053a39c014fd062f8642a9cce0d4eb95d4194da`  
		Last Modified: Wed, 20 Jun 2018 21:32:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b580b0be12ac66e6b3ec39b0838035441a01219fefec01b2d34f6abbd7e07d4e`  
		Last Modified: Wed, 20 Jun 2018 21:32:49 GMT  
		Size: 62.4 MB (62395739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814953db4ba122dddfe22c3d8f6b727e6b42f538d268d5e2a0c9b5fe3d440f61`  
		Last Modified: Wed, 20 Jun 2018 21:32:37 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a649b883054837b6900b5cc1adfc56d956664649ad4942b21096a1860b4cef`  
		Last Modified: Wed, 20 Jun 2018 21:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35`

```console
$ docker pull mariadb@sha256:5b430fafa1bd46af8dfc2a46a50f0a2ae04fc2996c829253ef253cd4200f0160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.35` - linux; amd64

```console
$ docker pull mariadb@sha256:c0151a9949a818d3714ff75b0fef41775472843a0f974545de8f75896a12a534
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.7 MB (122684035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cf856ffaa192887f95fafb78b8674b9ce27451c78a95cbf6d46eb42bd5d9475`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:26:37 GMT
ENV MARIADB_MAJOR=10.0
# Wed, 20 Jun 2018 21:26:37 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Wed, 20 Jun 2018 21:26:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:28:01 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:28:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:28:02 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:28:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:28:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:28:03 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:28:03 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f75b05dcabaf5efbe0e9139fc053a39c014fd062f8642a9cce0d4eb95d4194da`  
		Last Modified: Wed, 20 Jun 2018 21:32:36 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b580b0be12ac66e6b3ec39b0838035441a01219fefec01b2d34f6abbd7e07d4e`  
		Last Modified: Wed, 20 Jun 2018 21:32:49 GMT  
		Size: 62.4 MB (62395739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814953db4ba122dddfe22c3d8f6b727e6b42f538d268d5e2a0c9b5fe3d440f61`  
		Last Modified: Wed, 20 Jun 2018 21:32:37 GMT  
		Size: 2.6 KB (2603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a649b883054837b6900b5cc1adfc56d956664649ad4942b21096a1860b4cef`  
		Last Modified: Wed, 20 Jun 2018 21:32:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:187306e7ca979094bc6a96dacedb50e72f0462b251d767e2a16590b05749f086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:abf19cf6c48aed6ba79c678635652ae12e04fe8ba973ab37ff58f1d9ebaa8aa3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138347614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f405422de4d353fb1e1d0cb805fcfe045dff58b1e9b57164b9f13777bcaa7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:24:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 20 Jun 2018 21:24:55 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Wed, 20 Jun 2018 21:24:56 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:26:19 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:26:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:26:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:26:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:26:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:26:21 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:26:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ea01426ff3eba762f13460b10de0fa4eea94c82e1c5a99b1feb8b0bdc82c28`  
		Last Modified: Wed, 20 Jun 2018 21:31:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f063a5b8ebd847603dc28b7422944b6ad0e898e618d820539c940de77ac62a`  
		Last Modified: Wed, 20 Jun 2018 21:32:16 GMT  
		Size: 78.1 MB (78059317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ecda11572a5b748c5ce07cc7bb670b4ca754d766aef079dff1e5b85de326c8`  
		Last Modified: Wed, 20 Jun 2018 21:31:59 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21782f13217a7ba1f650947bf5ea1c4647bc1a42d38ede389d6e65b74827144a`  
		Last Modified: Wed, 20 Jun 2018 21:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34`

```console
$ docker pull mariadb@sha256:187306e7ca979094bc6a96dacedb50e72f0462b251d767e2a16590b05749f086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.34` - linux; amd64

```console
$ docker pull mariadb@sha256:abf19cf6c48aed6ba79c678635652ae12e04fe8ba973ab37ff58f1d9ebaa8aa3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138347614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11f405422de4d353fb1e1d0cb805fcfe045dff58b1e9b57164b9f13777bcaa7a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:24:55 GMT
ENV MARIADB_MAJOR=10.1
# Wed, 20 Jun 2018 21:24:55 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Wed, 20 Jun 2018 21:24:56 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:26:19 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:26:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:26:20 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:26:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:26:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:26:21 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:26:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ea01426ff3eba762f13460b10de0fa4eea94c82e1c5a99b1feb8b0bdc82c28`  
		Last Modified: Wed, 20 Jun 2018 21:31:59 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77f063a5b8ebd847603dc28b7422944b6ad0e898e618d820539c940de77ac62a`  
		Last Modified: Wed, 20 Jun 2018 21:32:16 GMT  
		Size: 78.1 MB (78059317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6ecda11572a5b748c5ce07cc7bb670b4ca754d766aef079dff1e5b85de326c8`  
		Last Modified: Wed, 20 Jun 2018 21:31:59 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21782f13217a7ba1f650947bf5ea1c4647bc1a42d38ede389d6e65b74827144a`  
		Last Modified: Wed, 20 Jun 2018 21:32:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:6e5ede826eedd0a8126e1d9249a281ce39e57c7c9118a4cf300437566d5e1863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:c16fbb817c6c2d5497849044ff8fc6aeb82a3680fd1aed0f5ad79d4e5df11a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138569871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659a8fd2ec702b14215e5dbe6d6273c6e7e66daf973d7b7e50ef65da690bbfdb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:23:26 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 20 Jun 2018 21:23:27 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Wed, 20 Jun 2018 21:23:27 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:24:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:24:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:24:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:24:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:24:45 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:24:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f025d1f9507a138fc4fce67f0381e8906e280da99a13954f49737e53ea1741`  
		Last Modified: Wed, 20 Jun 2018 21:31:16 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb4938fde68d43f0a615cdfdd1168172d0e7a41544198c0b12836d222ce8ed1`  
		Last Modified: Wed, 20 Jun 2018 21:31:42 GMT  
		Size: 78.3 MB (78281575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4051fe292bc27f160a2fad50fa9bd9e5f2d1fe432208a9dd5e72f8d6e06cf`  
		Last Modified: Wed, 20 Jun 2018 21:31:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acf49ed93c90ea777a76c8e2497139b339d7736d661e99f3a43bd98f211c2e7`  
		Last Modified: Wed, 20 Jun 2018 21:31:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.15`

```console
$ docker pull mariadb@sha256:6e5ede826eedd0a8126e1d9249a281ce39e57c7c9118a4cf300437566d5e1863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.15` - linux; amd64

```console
$ docker pull mariadb@sha256:c16fbb817c6c2d5497849044ff8fc6aeb82a3680fd1aed0f5ad79d4e5df11a6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.6 MB (138569871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:659a8fd2ec702b14215e5dbe6d6273c6e7e66daf973d7b7e50ef65da690bbfdb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:23:26 GMT
ENV MARIADB_MAJOR=10.2
# Wed, 20 Jun 2018 21:23:27 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Wed, 20 Jun 2018 21:23:27 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:24:43 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:24:43 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:24:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:24:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:24:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:24:45 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:24:45 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f025d1f9507a138fc4fce67f0381e8906e280da99a13954f49737e53ea1741`  
		Last Modified: Wed, 20 Jun 2018 21:31:16 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb4938fde68d43f0a615cdfdd1168172d0e7a41544198c0b12836d222ce8ed1`  
		Last Modified: Wed, 20 Jun 2018 21:31:42 GMT  
		Size: 78.3 MB (78281575 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec4051fe292bc27f160a2fad50fa9bd9e5f2d1fe432208a9dd5e72f8d6e06cf`  
		Last Modified: Wed, 20 Jun 2018 21:31:16 GMT  
		Size: 2.6 KB (2605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5acf49ed93c90ea777a76c8e2497139b339d7736d661e99f3a43bd98f211c2e7`  
		Last Modified: Wed, 20 Jun 2018 21:31:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:e254be161ba28b24bcb2cc225d7f4926aafffc1feab1e07f2d2c62898c5ac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:4d7507741314f041d9c86dbc0c35ceaf3d25c3833e3d7899a8a3fcd03670f368
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139186661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724030be3a6e856979876d53a7339392910831a78300fe1522ac1d022016ef76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Wed, 20 Jun 2018 21:21:50 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:23:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:23:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:23:14 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:23:16 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:23:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00792835a5a8758ea83e75c6d62b79405b1cd80d26b93c52db5a319c0a9c894`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93402c3d385b312e470c1c3efdcb6d27576915c53647ef1621bb045d75c2d4`  
		Last Modified: Wed, 20 Jun 2018 21:30:29 GMT  
		Size: 78.9 MB (78898371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c559e39870338c7ed19777f95dc9f10fd5b33aef3312ed37c891caea9a30c`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ad8a6c00120512c23a66a05f8ecd8e2828d597bcc82a742b26c2da911760e`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.7`

```console
$ docker pull mariadb@sha256:e254be161ba28b24bcb2cc225d7f4926aafffc1feab1e07f2d2c62898c5ac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.7` - linux; amd64

```console
$ docker pull mariadb@sha256:4d7507741314f041d9c86dbc0c35ceaf3d25c3833e3d7899a8a3fcd03670f368
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139186661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724030be3a6e856979876d53a7339392910831a78300fe1522ac1d022016ef76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Wed, 20 Jun 2018 21:21:50 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:23:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:23:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:23:14 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:23:16 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:23:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00792835a5a8758ea83e75c6d62b79405b1cd80d26b93c52db5a319c0a9c894`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93402c3d385b312e470c1c3efdcb6d27576915c53647ef1621bb045d75c2d4`  
		Last Modified: Wed, 20 Jun 2018 21:30:29 GMT  
		Size: 78.9 MB (78898371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c559e39870338c7ed19777f95dc9f10fd5b33aef3312ed37c891caea9a30c`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ad8a6c00120512c23a66a05f8ecd8e2828d597bcc82a742b26c2da911760e`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:1881b43548600b87d5338ffef44b8df4418c77d0f3a3e956ec2846ca5e6482d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:f14b4e5586b4892d4b93d91559100c5274b248b1e4af1d761827830c785013e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bfd46431c9b5159516460d6041949b6357883653adc51b628fed3f051418f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 21:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:28:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:28:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:28:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:29:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:29:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:29:10 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Wed, 20 Jun 2018 21:29:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:29:37 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:29:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:29:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:29:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:29:39 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:29:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25967bd049dc0c758126c5eab89b48308871d6c1a45b7b2561a44ce573f92c3c`  
		Last Modified: Wed, 20 Jun 2018 21:33:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbf232f3f1bf7c354bf7a3c05d0f7ff493a22c50645f9f9b4b60e2be1172cc9`  
		Last Modified: Wed, 20 Jun 2018 21:33:17 GMT  
		Size: 959.9 KB (959850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fee9f106c770722ebe2c875e051c707dc3d9271f2b8117af0545a2252af667`  
		Last Modified: Wed, 20 Jun 2018 21:33:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d86f16819b9773f85f9d7483a148e9db208ec2559cfc7e7a5cc66a3bb144cc`  
		Last Modified: Wed, 20 Jun 2018 21:33:14 GMT  
		Size: 4.7 MB (4674157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e769a520612d9ac8510244ffe0b288af3f5b8805d3623c04a7e47507e7ad420`  
		Last Modified: Wed, 20 Jun 2018 21:33:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c5c7d6b09ff84c70dc532f4ca61608f5e739d79de9717c646d9019aeafb475`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e847da16091bfd2ad8a4f5c09117a3f080f5f27f0664f0bf94e22e226d7ca`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3dc32baf7951c9ce51270b12913b133e2c8d943137587b5255cdaab75d342`  
		Last Modified: Wed, 20 Jun 2018 21:33:27 GMT  
		Size: 53.2 MB (53174949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40917c8655c9507de92907fe28cde50a273babc3b229c0d597e359b489f9b0e`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e197b6909005c6585c43d034feedb969e4ea7fcd0f04d1617e8ac6187673620c`  
		Last Modified: Wed, 20 Jun 2018 21:33:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:1881b43548600b87d5338ffef44b8df4418c77d0f3a3e956ec2846ca5e6482d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:f14b4e5586b4892d4b93d91559100c5274b248b1e4af1d761827830c785013e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bfd46431c9b5159516460d6041949b6357883653adc51b628fed3f051418f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 21:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:28:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:28:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:28:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:29:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:29:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:29:10 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Wed, 20 Jun 2018 21:29:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:29:37 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:29:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:29:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:29:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:29:39 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:29:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25967bd049dc0c758126c5eab89b48308871d6c1a45b7b2561a44ce573f92c3c`  
		Last Modified: Wed, 20 Jun 2018 21:33:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbf232f3f1bf7c354bf7a3c05d0f7ff493a22c50645f9f9b4b60e2be1172cc9`  
		Last Modified: Wed, 20 Jun 2018 21:33:17 GMT  
		Size: 959.9 KB (959850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fee9f106c770722ebe2c875e051c707dc3d9271f2b8117af0545a2252af667`  
		Last Modified: Wed, 20 Jun 2018 21:33:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d86f16819b9773f85f9d7483a148e9db208ec2559cfc7e7a5cc66a3bb144cc`  
		Last Modified: Wed, 20 Jun 2018 21:33:14 GMT  
		Size: 4.7 MB (4674157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e769a520612d9ac8510244ffe0b288af3f5b8805d3623c04a7e47507e7ad420`  
		Last Modified: Wed, 20 Jun 2018 21:33:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c5c7d6b09ff84c70dc532f4ca61608f5e739d79de9717c646d9019aeafb475`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e847da16091bfd2ad8a4f5c09117a3f080f5f27f0664f0bf94e22e226d7ca`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3dc32baf7951c9ce51270b12913b133e2c8d943137587b5255cdaab75d342`  
		Last Modified: Wed, 20 Jun 2018 21:33:27 GMT  
		Size: 53.2 MB (53174949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40917c8655c9507de92907fe28cde50a273babc3b229c0d597e359b489f9b0e`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e197b6909005c6585c43d034feedb969e4ea7fcd0f04d1617e8ac6187673620c`  
		Last Modified: Wed, 20 Jun 2018 21:33:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60`

```console
$ docker pull mariadb@sha256:1881b43548600b87d5338ffef44b8df4418c77d0f3a3e956ec2846ca5e6482d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.60` - linux; amd64

```console
$ docker pull mariadb@sha256:f14b4e5586b4892d4b93d91559100c5274b248b1e4af1d761827830c785013e3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39bfd46431c9b5159516460d6041949b6357883653adc51b628fed3f051418f3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Wed, 20 Jun 2018 21:28:21 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:28:26 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:28:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:28:51 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:29:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:29:08 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:29:10 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:29:10 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_MAJOR=5.5
# Wed, 20 Jun 2018 21:29:11 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Wed, 20 Jun 2018 21:29:11 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:29:37 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:29:38 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:29:38 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:29:39 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:29:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:29:39 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:29:39 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25967bd049dc0c758126c5eab89b48308871d6c1a45b7b2561a44ce573f92c3c`  
		Last Modified: Wed, 20 Jun 2018 21:33:16 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fbf232f3f1bf7c354bf7a3c05d0f7ff493a22c50645f9f9b4b60e2be1172cc9`  
		Last Modified: Wed, 20 Jun 2018 21:33:17 GMT  
		Size: 959.9 KB (959850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fee9f106c770722ebe2c875e051c707dc3d9271f2b8117af0545a2252af667`  
		Last Modified: Wed, 20 Jun 2018 21:33:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d86f16819b9773f85f9d7483a148e9db208ec2559cfc7e7a5cc66a3bb144cc`  
		Last Modified: Wed, 20 Jun 2018 21:33:14 GMT  
		Size: 4.7 MB (4674157 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e769a520612d9ac8510244ffe0b288af3f5b8805d3623c04a7e47507e7ad420`  
		Last Modified: Wed, 20 Jun 2018 21:33:12 GMT  
		Size: 20.9 KB (20864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59c5c7d6b09ff84c70dc532f4ca61608f5e739d79de9717c646d9019aeafb475`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42e847da16091bfd2ad8a4f5c09117a3f080f5f27f0664f0bf94e22e226d7ca`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36c3dc32baf7951c9ce51270b12913b133e2c8d943137587b5255cdaab75d342`  
		Last Modified: Wed, 20 Jun 2018 21:33:27 GMT  
		Size: 53.2 MB (53174949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40917c8655c9507de92907fe28cde50a273babc3b229c0d597e359b489f9b0e`  
		Last Modified: Wed, 20 Jun 2018 21:33:09 GMT  
		Size: 2.6 KB (2604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e197b6909005c6585c43d034feedb969e4ea7fcd0f04d1617e8ac6187673620c`  
		Last Modified: Wed, 20 Jun 2018 21:33:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:e254be161ba28b24bcb2cc225d7f4926aafffc1feab1e07f2d2c62898c5ac88a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:4d7507741314f041d9c86dbc0c35ceaf3d25c3833e3d7899a8a3fcd03670f368
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139186661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:724030be3a6e856979876d53a7339392910831a78300fe1522ac1d022016ef76`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 18:35:02 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 20 Jun 2018 21:19:49 GMT
ENV GOSU_VERSION=1.10
# Wed, 20 Jun 2018 21:20:47 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 20 Jun 2018 21:20:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 20 Jun 2018 21:21:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Wed, 20 Jun 2018 21:21:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Wed, 20 Jun 2018 21:21:43 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Wed, 20 Jun 2018 21:21:43 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 20 Jun 2018 21:21:49 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Wed, 20 Jun 2018 21:21:50 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 20 Jun 2018 21:23:14 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 20 Jun 2018 21:23:14 GMT
VOLUME [/var/lib/mysql]
# Wed, 20 Jun 2018 21:23:14 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 20 Jun 2018 21:23:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 20 Jun 2018 21:23:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 20 Jun 2018 21:23:16 GMT
EXPOSE 3306/tcp
# Wed, 20 Jun 2018 21:23:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f79b1d6f55d834d4cc91cd78e5871d28314aa9ec9f422f3bf6dfc0cbde930d13`  
		Last Modified: Wed, 06 Jun 2018 18:42:38 GMT  
		Size: 2.1 KB (2096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20581e7b5d1e545de76db12cfd487ae97bf3035089766e5576930047892cc50f`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 988.8 KB (988787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e585456bc466685d71f55be45a0d584765f9dcc76bd32fad9921c67edcf766cc`  
		Last Modified: Wed, 20 Jun 2018 21:30:04 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bead064b3a085a62b1820e6813e262af83ff598b20fa8de2e462471af8d990bd`  
		Last Modified: Wed, 20 Jun 2018 21:30:05 GMT  
		Size: 5.0 MB (5010538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66590767e853b824add96a9ec86688c8402bff90de4ad2591da43f0cbed32622`  
		Last Modified: Wed, 20 Jun 2018 21:30:03 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e314a33356b10ba8ed7d09804b8cb18742e52615931097871138a9722e47851`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00792835a5a8758ea83e75c6d62b79405b1cd80d26b93c52db5a319c0a9c894`  
		Last Modified: Wed, 20 Jun 2018 21:30:01 GMT  
		Size: 320.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c93402c3d385b312e470c1c3efdcb6d27576915c53647ef1621bb045d75c2d4`  
		Last Modified: Wed, 20 Jun 2018 21:30:29 GMT  
		Size: 78.9 MB (78898371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:190c559e39870338c7ed19777f95dc9f10fd5b33aef3312ed37c891caea9a30c`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343ad8a6c00120512c23a66a05f8ecd8e2828d597bcc82a742b26c2da911760e`  
		Last Modified: Wed, 20 Jun 2018 21:30:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
