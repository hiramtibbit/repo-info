<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.35`](#mariadb10035)
-	[`mariadb:10.0.35-jessie`](#mariadb10035-jessie)
-	[`mariadb:10.0-jessie`](#mariadb100-jessie)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.34`](#mariadb10134)
-	[`mariadb:10.1.34-jessie`](#mariadb10134-jessie)
-	[`mariadb:10.1-jessie`](#mariadb101-jessie)
-	[`mariadb:10.2`](#mariadb102)
-	[`mariadb:10.2.16`](#mariadb10216)
-	[`mariadb:10.2.16-jessie`](#mariadb10216-jessie)
-	[`mariadb:10.2-jessie`](#mariadb102-jessie)
-	[`mariadb:10.3`](#mariadb103)
-	[`mariadb:10.3.8`](#mariadb1038)
-	[`mariadb:10.3.8-jessie`](#mariadb1038-jessie)
-	[`mariadb:10.3-jessie`](#mariadb103-jessie)
-	[`mariadb:10-jessie`](#mariadb10-jessie)
-	[`mariadb:5`](#mariadb5)
-	[`mariadb:5.5`](#mariadb55)
-	[`mariadb:5.5.60`](#mariadb5560)
-	[`mariadb:5.5.60-wheezy`](#mariadb5560-wheezy)
-	[`mariadb:5.5-wheezy`](#mariadb55-wheezy)
-	[`mariadb:5-wheezy`](#mariadb5-wheezy)
-	[`mariadb:jessie`](#mariadbjessie)
-	[`mariadb:latest`](#mariadblatest)

## `mariadb:10`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:e706b1a33a82310470b8fce8969075360ca04722705067c375e5b2df511c5130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:3358d5c102db0e2d9749ea894292227e1fa1a5a0dd9d4a498ba4627be4e0fadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120919997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f978deb011f239cfc136a68182a48d9a042b2fbe757bdac4a1731625f6c0135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 17 Jul 2018 03:32:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:33:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:33:31 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:33:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:33:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:33:33 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:33:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b718d5fee0c62d66b528dade66d7274355fb81c4e664a4d0ffe9b1d9ce4d1934`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25670860ea8f3a17467229c0094055e7e0fecd39d11d0cfc7996194f20a604`  
		Last Modified: Tue, 17 Jul 2018 03:43:09 GMT  
		Size: 60.7 MB (60687651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b0ef6cb0843df3c77ff9976de8d4a9df5df69da8d02b8c4a257ff834471d6`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9ca6a5983aa881be56d68b6a79c58fe69f9a1052e4606844e6df5a86006b8a`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35`

```console
$ docker pull mariadb@sha256:e706b1a33a82310470b8fce8969075360ca04722705067c375e5b2df511c5130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.35` - linux; amd64

```console
$ docker pull mariadb@sha256:3358d5c102db0e2d9749ea894292227e1fa1a5a0dd9d4a498ba4627be4e0fadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120919997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f978deb011f239cfc136a68182a48d9a042b2fbe757bdac4a1731625f6c0135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 17 Jul 2018 03:32:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:33:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:33:31 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:33:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:33:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:33:33 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:33:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b718d5fee0c62d66b528dade66d7274355fb81c4e664a4d0ffe9b1d9ce4d1934`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25670860ea8f3a17467229c0094055e7e0fecd39d11d0cfc7996194f20a604`  
		Last Modified: Tue, 17 Jul 2018 03:43:09 GMT  
		Size: 60.7 MB (60687651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b0ef6cb0843df3c77ff9976de8d4a9df5df69da8d02b8c4a257ff834471d6`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9ca6a5983aa881be56d68b6a79c58fe69f9a1052e4606844e6df5a86006b8a`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35-jessie`

```console
$ docker pull mariadb@sha256:e706b1a33a82310470b8fce8969075360ca04722705067c375e5b2df511c5130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.35-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:3358d5c102db0e2d9749ea894292227e1fa1a5a0dd9d4a498ba4627be4e0fadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120919997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f978deb011f239cfc136a68182a48d9a042b2fbe757bdac4a1731625f6c0135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 17 Jul 2018 03:32:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:33:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:33:31 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:33:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:33:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:33:33 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:33:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b718d5fee0c62d66b528dade66d7274355fb81c4e664a4d0ffe9b1d9ce4d1934`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25670860ea8f3a17467229c0094055e7e0fecd39d11d0cfc7996194f20a604`  
		Last Modified: Tue, 17 Jul 2018 03:43:09 GMT  
		Size: 60.7 MB (60687651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b0ef6cb0843df3c77ff9976de8d4a9df5df69da8d02b8c4a257ff834471d6`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9ca6a5983aa881be56d68b6a79c58fe69f9a1052e4606844e6df5a86006b8a`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0-jessie`

```console
$ docker pull mariadb@sha256:e706b1a33a82310470b8fce8969075360ca04722705067c375e5b2df511c5130
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:3358d5c102db0e2d9749ea894292227e1fa1a5a0dd9d4a498ba4627be4e0fadb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120919997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f978deb011f239cfc136a68182a48d9a042b2fbe757bdac4a1731625f6c0135`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 17 Jul 2018 03:32:10 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 17 Jul 2018 03:32:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:33:29 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:33:31 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:33:31 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:33:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:33:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:33:33 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:33:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b718d5fee0c62d66b528dade66d7274355fb81c4e664a4d0ffe9b1d9ce4d1934`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25670860ea8f3a17467229c0094055e7e0fecd39d11d0cfc7996194f20a604`  
		Last Modified: Tue, 17 Jul 2018 03:43:09 GMT  
		Size: 60.7 MB (60687651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:066b0ef6cb0843df3c77ff9976de8d4a9df5df69da8d02b8c4a257ff834471d6`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9ca6a5983aa881be56d68b6a79c58fe69f9a1052e4606844e6df5a86006b8a`  
		Last Modified: Tue, 17 Jul 2018 03:42:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:137809bb39b585e1473246f4e3458482c547757ba575f21120f5ec6e17a6dc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:25f0fff593e6573266068b78e9bc5aff6fcc0d4569c03b1d489692cd13f936fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136576805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0214105de05760df1fd9c371902b34eb02d1cb4e9fc413e97e33d909fd5757d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 17 Jul 2018 03:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:31:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:31:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:31:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:31:46 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:31:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653f99436403234fa17d35a7f40fd93a00560dab29b81a62bd9b50509971b12`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fba999c0291576c8b60fcde75f45815f19e7d2cdb06d264554a4fd12b97304`  
		Last Modified: Tue, 17 Jul 2018 03:41:26 GMT  
		Size: 76.3 MB (76344459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36083829297430c3c344247ae8447f15de0ffa46d71d69f39ce45d913332268`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744b4c04cbab86e000d67fffeb7836eff04a3985badc5b850c15b31107d85c8`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34`

```console
$ docker pull mariadb@sha256:137809bb39b585e1473246f4e3458482c547757ba575f21120f5ec6e17a6dc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.34` - linux; amd64

```console
$ docker pull mariadb@sha256:25f0fff593e6573266068b78e9bc5aff6fcc0d4569c03b1d489692cd13f936fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136576805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0214105de05760df1fd9c371902b34eb02d1cb4e9fc413e97e33d909fd5757d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 17 Jul 2018 03:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:31:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:31:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:31:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:31:46 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:31:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653f99436403234fa17d35a7f40fd93a00560dab29b81a62bd9b50509971b12`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fba999c0291576c8b60fcde75f45815f19e7d2cdb06d264554a4fd12b97304`  
		Last Modified: Tue, 17 Jul 2018 03:41:26 GMT  
		Size: 76.3 MB (76344459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36083829297430c3c344247ae8447f15de0ffa46d71d69f39ce45d913332268`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744b4c04cbab86e000d67fffeb7836eff04a3985badc5b850c15b31107d85c8`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34-jessie`

```console
$ docker pull mariadb@sha256:137809bb39b585e1473246f4e3458482c547757ba575f21120f5ec6e17a6dc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.34-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:25f0fff593e6573266068b78e9bc5aff6fcc0d4569c03b1d489692cd13f936fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136576805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0214105de05760df1fd9c371902b34eb02d1cb4e9fc413e97e33d909fd5757d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 17 Jul 2018 03:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:31:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:31:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:31:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:31:46 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:31:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653f99436403234fa17d35a7f40fd93a00560dab29b81a62bd9b50509971b12`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fba999c0291576c8b60fcde75f45815f19e7d2cdb06d264554a4fd12b97304`  
		Last Modified: Tue, 17 Jul 2018 03:41:26 GMT  
		Size: 76.3 MB (76344459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36083829297430c3c344247ae8447f15de0ffa46d71d69f39ce45d913332268`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744b4c04cbab86e000d67fffeb7836eff04a3985badc5b850c15b31107d85c8`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1-jessie`

```console
$ docker pull mariadb@sha256:137809bb39b585e1473246f4e3458482c547757ba575f21120f5ec6e17a6dc63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:25f0fff593e6573266068b78e9bc5aff6fcc0d4569c03b1d489692cd13f936fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136576805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0214105de05760df1fd9c371902b34eb02d1cb4e9fc413e97e33d909fd5757d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 17 Jul 2018 03:30:21 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 17 Jul 2018 03:30:21 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:31:44 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:31:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:31:44 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:31:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:31:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:31:46 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:31:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c653f99436403234fa17d35a7f40fd93a00560dab29b81a62bd9b50509971b12`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78fba999c0291576c8b60fcde75f45815f19e7d2cdb06d264554a4fd12b97304`  
		Last Modified: Tue, 17 Jul 2018 03:41:26 GMT  
		Size: 76.3 MB (76344459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e36083829297430c3c344247ae8447f15de0ffa46d71d69f39ce45d913332268`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5744b4c04cbab86e000d67fffeb7836eff04a3985badc5b850c15b31107d85c8`  
		Last Modified: Tue, 17 Jul 2018 03:40:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:4758a49054ce3922afe513c3cb6cb5e4275c9242464bb1a61731c6474f8eeada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:9011abb265375e9fdddc846a04e8d1794654fe135671f421d7d746217cc42e79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136810458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43214e07b9846996b176018905d6fff9616929648f4841681fa7304c1bb6eaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_VERSION=10.2.16+maria~jessie
# Tue, 17 Jul 2018 03:28:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:29:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:29:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:29:58 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:29:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:29:59 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:29:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086ab363227a8c49ab5f4d1b61a1bba740a45be05fb84fdbc2f8f42bc0fd524d`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cc8d70d2545b07049517f75878f0e4f731e7a771250cd9c164fc43cbfa8c3`  
		Last Modified: Tue, 17 Jul 2018 03:39:24 GMT  
		Size: 76.6 MB (76578116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c592d59d3e1d9795859d4ee11fff7cae8c7ed91ddda677108d70d472e52e22`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb06030e0feb093d44280c06747a3ee1a178908769ce2ab3ca1e275d887c867`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.16`

```console
$ docker pull mariadb@sha256:4758a49054ce3922afe513c3cb6cb5e4275c9242464bb1a61731c6474f8eeada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.16` - linux; amd64

```console
$ docker pull mariadb@sha256:9011abb265375e9fdddc846a04e8d1794654fe135671f421d7d746217cc42e79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136810458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43214e07b9846996b176018905d6fff9616929648f4841681fa7304c1bb6eaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_VERSION=10.2.16+maria~jessie
# Tue, 17 Jul 2018 03:28:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:29:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:29:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:29:58 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:29:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:29:59 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:29:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086ab363227a8c49ab5f4d1b61a1bba740a45be05fb84fdbc2f8f42bc0fd524d`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cc8d70d2545b07049517f75878f0e4f731e7a771250cd9c164fc43cbfa8c3`  
		Last Modified: Tue, 17 Jul 2018 03:39:24 GMT  
		Size: 76.6 MB (76578116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c592d59d3e1d9795859d4ee11fff7cae8c7ed91ddda677108d70d472e52e22`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb06030e0feb093d44280c06747a3ee1a178908769ce2ab3ca1e275d887c867`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.16-jessie`

```console
$ docker pull mariadb@sha256:4758a49054ce3922afe513c3cb6cb5e4275c9242464bb1a61731c6474f8eeada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.16-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:9011abb265375e9fdddc846a04e8d1794654fe135671f421d7d746217cc42e79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136810458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43214e07b9846996b176018905d6fff9616929648f4841681fa7304c1bb6eaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_VERSION=10.2.16+maria~jessie
# Tue, 17 Jul 2018 03:28:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:29:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:29:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:29:58 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:29:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:29:59 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:29:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086ab363227a8c49ab5f4d1b61a1bba740a45be05fb84fdbc2f8f42bc0fd524d`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cc8d70d2545b07049517f75878f0e4f731e7a771250cd9c164fc43cbfa8c3`  
		Last Modified: Tue, 17 Jul 2018 03:39:24 GMT  
		Size: 76.6 MB (76578116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c592d59d3e1d9795859d4ee11fff7cae8c7ed91ddda677108d70d472e52e22`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb06030e0feb093d44280c06747a3ee1a178908769ce2ab3ca1e275d887c867`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2-jessie`

```console
$ docker pull mariadb@sha256:4758a49054ce3922afe513c3cb6cb5e4275c9242464bb1a61731c6474f8eeada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:9011abb265375e9fdddc846a04e8d1794654fe135671f421d7d746217cc42e79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.8 MB (136810458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43214e07b9846996b176018905d6fff9616929648f4841681fa7304c1bb6eaf0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_MAJOR=10.2
# Tue, 17 Jul 2018 03:28:46 GMT
ENV MARIADB_VERSION=10.2.16+maria~jessie
# Tue, 17 Jul 2018 03:28:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:29:57 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:29:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:29:58 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:29:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:29:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:29:59 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:29:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086ab363227a8c49ab5f4d1b61a1bba740a45be05fb84fdbc2f8f42bc0fd524d`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1cc8d70d2545b07049517f75878f0e4f731e7a771250cd9c164fc43cbfa8c3`  
		Last Modified: Tue, 17 Jul 2018 03:39:24 GMT  
		Size: 76.6 MB (76578116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c592d59d3e1d9795859d4ee11fff7cae8c7ed91ddda677108d70d472e52e22`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 2.6 KB (2596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdb06030e0feb093d44280c06747a3ee1a178908769ce2ab3ca1e275d887c867`  
		Last Modified: Tue, 17 Jul 2018 03:38:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.8`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.8` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.8-jessie`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.8-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3-jessie`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10-jessie`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10-jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.60` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60-wheezy`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.60-wheezy` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5-wheezy`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5-wheezy` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5-wheezy`

```console
$ docker pull mariadb@sha256:f403d7f181e5e323c9fbedff85670e8494dc31b602a3dafbf67cda5c34554d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5-wheezy` - linux; amd64

```console
$ docker pull mariadb@sha256:2aac0d2ac8b260186bc25d8af7a0f1a04952cd2824cff8c663bcf3948749854d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98151933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877b1c489d6019581d01070b37021dcb3e6bcf2a95e5bd5c6281b10e7f39f014`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:30:45 GMT
ADD file:4c3253aab9345644b963de0904cbc731c05501e6c101d078a25c0ee8452ea018 in / 
# Tue, 17 Jul 2018 00:30:45 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:34:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:34:01 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:34:18 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:34:27 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:34:41 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:34:42 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:34:43 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 17 Jul 2018 03:34:43 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 17 Jul 2018 03:34:44 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:35:02 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:35:03 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:35:03 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:35:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:35:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:35:04 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:35:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:7d9e07670407202c9f5ca38e1c74864757e2902b55ccc081bdfed0dfc88c94d9`  
		Last Modified: Tue, 17 Jul 2018 00:47:43 GMT  
		Size: 39.3 MB (39339295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1350850d50ff683ee484120f8f4f3e669be4734984fd61252d7c5e56e5049467`  
		Last Modified: Tue, 17 Jul 2018 03:44:46 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54a5debee24555efdccfd83ca739ab544eb102053cea7b5cc3a6df9498c3023c`  
		Last Modified: Tue, 17 Jul 2018 03:44:45 GMT  
		Size: 959.7 KB (959742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af7b119526311115bf1b5a9ca6aed80b5ec6d0f95527b3ccad9e43f95d8fae6b`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:909a0d6ac6e9ef770d21a43cedd50c57912647291e40172e7246c8e2ff1998c3`  
		Last Modified: Tue, 17 Jul 2018 03:44:44 GMT  
		Size: 4.7 MB (4651951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7095f066001b4ee30d770b249b4669c902ebd0735a2dda41c7f4b8be42a6f177`  
		Last Modified: Tue, 17 Jul 2018 03:44:43 GMT  
		Size: 20.9 KB (20859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:318d0a6e228347603dbeb54889c7e629d37b7d5e5bf6cfd80305c09030bbba86`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6767eb225aea883ad665218089572787e300419713588f15d0a97d2d63c766ad`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6726a49fe0c0004b800e29fc110006848cf2e569978a0db3c110b6e6aa20f01`  
		Last Modified: Tue, 17 Jul 2018 03:44:59 GMT  
		Size: 53.2 MB (53174869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0bf93a626e271579efcf44d748d64db1a41f8a729feb5378f294b6d7075e52c`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1ea07f58d532f9f64b696158d6d7a1d477b0db2a6f81ad0023299dc391af2d`  
		Last Modified: Tue, 17 Jul 2018 03:44:40 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:jessie`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:dd8dc06353887dc8235ca83701418dcd29e505301db417439205ed67350d61dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:2ffce8557fa81e826eae8cbbf06b6e58edae87f1e46f8a8559887b4e39252b40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457671 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13814daf85b20126bed6dbd0eb7c2e6c5535ca58a004f0ade92e465a7c0236b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:20:47 GMT
ADD file:b90e572f7462a23e2e4eda57269941ee7d8f078ca8ab1eefca86927713e13365 in / 
# Tue, 17 Jul 2018 00:20:48 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:24:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 03:24:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 17 Jul 2018 03:25:49 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 03:26:02 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 03:26:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:26:42 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 17 Jul 2018 03:26:52 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 17 Jul 2018 03:27:02 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 17 Jul 2018 03:27:02 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Tue, 17 Jul 2018 03:27:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 17 Jul 2018 03:28:17 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 03:28:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 03:28:18 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 17 Jul 2018 03:28:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 17 Jul 2018 03:28:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 03:28:20 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 03:28:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:d660b1f15b9bfb8142f50b518156f2d364d9642fe05854538b060498e2f7928d`  
		Last Modified: Tue, 17 Jul 2018 00:34:02 GMT  
		Size: 54.3 MB (54252125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c31ac90ebb2fa217ec78ac1def4262632e742d60301da3746bf5a945d0820280`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 2.1 KB (2090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb961997371e0ca603afe9d17036ca5648921722ac0359456bc15ece2223be8c`  
		Last Modified: Tue, 17 Jul 2018 03:35:42 GMT  
		Size: 988.8 KB (988796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bce683987d583744c33c5c98cb293b6a76071d3b213649da3f46c8ceee2b13`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5af7bdeee6f76fcf82da90420fa9d8bf73288c2dcede2595466e1737c9e37c4c`  
		Last Modified: Tue, 17 Jul 2018 03:35:40 GMT  
		Size: 5.0 MB (4965030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16ef8af3c61ed26e828677438db520d0958b410fb613bedf077f4223a902f42d`  
		Last Modified: Tue, 17 Jul 2018 03:35:38 GMT  
		Size: 20.8 KB (20831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e3f09afcb5a5184e1ae4ac6a39a9983df069c2f05a373acd4cfab04daf06809`  
		Last Modified: Tue, 17 Jul 2018 03:35:37 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa0d4b7a708558fe8e146a6e704d7fce5578f08f39343bc50eebcaa056fca1e`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62094a39ba6f9f90bc7253ea61b116e535ded7065c8d992e2b064493afc6ad98`  
		Last Modified: Tue, 17 Jul 2018 03:36:03 GMT  
		Size: 77.2 MB (77225325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a8f0e27318698b5cf5a4b51a17d638b1a9b97b5b0926dabdb0d8c29539f8c2`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 2.6 KB (2600 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8dfdb13e87fc96839846681fd19639793d7f1216987be1c74c705f42ffb7cc8f`  
		Last Modified: Tue, 17 Jul 2018 03:35:35 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
