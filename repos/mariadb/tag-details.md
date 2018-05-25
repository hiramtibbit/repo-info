<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mariadb`

-	[`mariadb:10`](#mariadb10)
-	[`mariadb:10.0`](#mariadb100)
-	[`mariadb:10.0.35`](#mariadb10035)
-	[`mariadb:10.1`](#mariadb101)
-	[`mariadb:10.1.33`](#mariadb10133)
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
$ docker pull mariadb@sha256:21cbc4ff14023189c2004cd194976039318f31f2a0de11a3e2a4c85ff7c22fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:9e044879c7ad5f20799931afc8864711eb363e9bd591fc9731f455eac8a2ffc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136866102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447a2850813951279d08d8de17bdea3a11a5fbd0b029894c71abcee971d5ac14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:51:28 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 21 May 2018 21:23:40 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Mon, 21 May 2018 21:23:41 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 May 2018 21:24:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:24:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:27 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce9fcaa8405e831d89809cec7f1442648b1804d121d69076c54133145f49817`  
		Last Modified: Mon, 21 May 2018 21:24:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ec24cbcca586f3019d7d671b2eab7ee20bc5ca18422fb78b15be337f435896`  
		Last Modified: Mon, 21 May 2018 21:25:01 GMT  
		Size: 76.6 MB (76578170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bfe0d99a209f5943b75d2ae1804a036dd956479f5e9249e0cc2f30c2c2f774`  
		Last Modified: Wed, 23 May 2018 21:44:20 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8e32ff261f13d0f84e701cee3857b16d79dbf46ab58abc454e9fadc77153b8`  
		Last Modified: Wed, 23 May 2018 21:44:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:96c998198c6e54974693194ef90cf644188f6d4db773b4abbb7dde158d8a2de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:a85b642f115c4c456e17d2e8153d877fea5034d1b582a87ccd934cccd8f5cac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120975647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65df067447cd949da519d71f76b741e1e8b59bcf2d565d11a3fa84d12c018d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:18:43 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 04 May 2018 23:39:18 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Fri, 04 May 2018 23:39:19 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 May 2018 23:40:15 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 May 2018 23:40:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:41 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:43 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169b14e62f0d9909dca5d7f94432eb6054f22a55c8cc02261e13f38cace47845`  
		Last Modified: Fri, 04 May 2018 23:40:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5ede234be9e7d79e8fef34542f3d93a10c477df5753be22e9fe50d976e0857`  
		Last Modified: Fri, 04 May 2018 23:40:47 GMT  
		Size: 60.7 MB (60687718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f744351cef6e3e147572bf7a1fc52fcac95961344e885205f50c910f4e6124e`  
		Last Modified: Wed, 23 May 2018 21:45:14 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a4bc68bbd468f73283e8360297674849911ab4f6a0f927cb58f4bf5c4db7d1`  
		Last Modified: Wed, 23 May 2018 21:45:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35`

```console
$ docker pull mariadb@sha256:96c998198c6e54974693194ef90cf644188f6d4db773b4abbb7dde158d8a2de2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.35` - linux; amd64

```console
$ docker pull mariadb@sha256:a85b642f115c4c456e17d2e8153d877fea5034d1b582a87ccd934cccd8f5cac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120975647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f65df067447cd949da519d71f76b741e1e8b59bcf2d565d11a3fa84d12c018d2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:18:43 GMT
ENV MARIADB_MAJOR=10.0
# Fri, 04 May 2018 23:39:18 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Fri, 04 May 2018 23:39:19 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 04 May 2018 23:40:15 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 04 May 2018 23:40:16 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:41 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:43 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:169b14e62f0d9909dca5d7f94432eb6054f22a55c8cc02261e13f38cace47845`  
		Last Modified: Fri, 04 May 2018 23:40:39 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a5ede234be9e7d79e8fef34542f3d93a10c477df5753be22e9fe50d976e0857`  
		Last Modified: Fri, 04 May 2018 23:40:47 GMT  
		Size: 60.7 MB (60687718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f744351cef6e3e147572bf7a1fc52fcac95961344e885205f50c910f4e6124e`  
		Last Modified: Wed, 23 May 2018 21:45:14 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a4bc68bbd468f73283e8360297674849911ab4f6a0f927cb58f4bf5c4db7d1`  
		Last Modified: Wed, 23 May 2018 21:45:14 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:39d06385079434d2b3d1c4afb5464368c901e7fb04f7f942865e9c3cb9e34341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:ff642e530974698bc373303bb8074dcd2da501aa0e4e3d7444f7f6715f315cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136644291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98a88b23fa07018fa1bfde43fff3d908bcd34f05e3bead6d0c02983ef53a332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:02:33 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 10 May 2018 20:33:30 GMT
ENV MARIADB_VERSION=10.1.33+maria-1~jessie
# Thu, 10 May 2018 20:33:31 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 10 May 2018 20:34:33 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 10 May 2018 20:34:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:33 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:35 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cbb5b570a9c19e9889b6ea8d740c2673320cd342c075fa11bf421b0564a96`  
		Last Modified: Thu, 10 May 2018 20:35:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52c529c3071267f13b406d595343dd2c9ad3b58856a9d6dcaadddad10e73c76`  
		Last Modified: Thu, 10 May 2018 20:35:42 GMT  
		Size: 76.4 MB (76356363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1143d0ac416fc94a2988b5790f9063a4e00104c6d720d3d6b1e100a6db7b8d1f`  
		Last Modified: Wed, 23 May 2018 21:44:55 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc05ea69f8e0728be66ad2af4164b531d9569f161fd6517e05c63269b8377941`  
		Last Modified: Wed, 23 May 2018 21:44:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.33`

```console
$ docker pull mariadb@sha256:39d06385079434d2b3d1c4afb5464368c901e7fb04f7f942865e9c3cb9e34341
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.33` - linux; amd64

```console
$ docker pull mariadb@sha256:ff642e530974698bc373303bb8074dcd2da501aa0e4e3d7444f7f6715f315cd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136644291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e98a88b23fa07018fa1bfde43fff3d908bcd34f05e3bead6d0c02983ef53a332`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:02:33 GMT
ENV MARIADB_MAJOR=10.1
# Thu, 10 May 2018 20:33:30 GMT
ENV MARIADB_VERSION=10.1.33+maria-1~jessie
# Thu, 10 May 2018 20:33:31 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Thu, 10 May 2018 20:34:33 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 10 May 2018 20:34:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:33 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:35 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:35 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73cbb5b570a9c19e9889b6ea8d740c2673320cd342c075fa11bf421b0564a96`  
		Last Modified: Thu, 10 May 2018 20:35:31 GMT  
		Size: 324.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e52c529c3071267f13b406d595343dd2c9ad3b58856a9d6dcaadddad10e73c76`  
		Last Modified: Thu, 10 May 2018 20:35:42 GMT  
		Size: 76.4 MB (76356363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1143d0ac416fc94a2988b5790f9063a4e00104c6d720d3d6b1e100a6db7b8d1f`  
		Last Modified: Wed, 23 May 2018 21:44:55 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc05ea69f8e0728be66ad2af4164b531d9569f161fd6517e05c63269b8377941`  
		Last Modified: Wed, 23 May 2018 21:44:55 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2`

```console
$ docker pull mariadb@sha256:21cbc4ff14023189c2004cd194976039318f31f2a0de11a3e2a4c85ff7c22fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2` - linux; amd64

```console
$ docker pull mariadb@sha256:9e044879c7ad5f20799931afc8864711eb363e9bd591fc9731f455eac8a2ffc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136866102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447a2850813951279d08d8de17bdea3a11a5fbd0b029894c71abcee971d5ac14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:51:28 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 21 May 2018 21:23:40 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Mon, 21 May 2018 21:23:41 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 May 2018 21:24:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:24:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:27 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce9fcaa8405e831d89809cec7f1442648b1804d121d69076c54133145f49817`  
		Last Modified: Mon, 21 May 2018 21:24:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ec24cbcca586f3019d7d671b2eab7ee20bc5ca18422fb78b15be337f435896`  
		Last Modified: Mon, 21 May 2018 21:25:01 GMT  
		Size: 76.6 MB (76578170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bfe0d99a209f5943b75d2ae1804a036dd956479f5e9249e0cc2f30c2c2f774`  
		Last Modified: Wed, 23 May 2018 21:44:20 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8e32ff261f13d0f84e701cee3857b16d79dbf46ab58abc454e9fadc77153b8`  
		Last Modified: Wed, 23 May 2018 21:44:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.2.15`

```console
$ docker pull mariadb@sha256:21cbc4ff14023189c2004cd194976039318f31f2a0de11a3e2a4c85ff7c22fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.2.15` - linux; amd64

```console
$ docker pull mariadb@sha256:9e044879c7ad5f20799931afc8864711eb363e9bd591fc9731f455eac8a2ffc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136866102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447a2850813951279d08d8de17bdea3a11a5fbd0b029894c71abcee971d5ac14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:51:28 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 21 May 2018 21:23:40 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Mon, 21 May 2018 21:23:41 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 May 2018 21:24:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:24:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:27 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce9fcaa8405e831d89809cec7f1442648b1804d121d69076c54133145f49817`  
		Last Modified: Mon, 21 May 2018 21:24:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ec24cbcca586f3019d7d671b2eab7ee20bc5ca18422fb78b15be337f435896`  
		Last Modified: Mon, 21 May 2018 21:25:01 GMT  
		Size: 76.6 MB (76578170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bfe0d99a209f5943b75d2ae1804a036dd956479f5e9249e0cc2f30c2c2f774`  
		Last Modified: Wed, 23 May 2018 21:44:20 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8e32ff261f13d0f84e701cee3857b16d79dbf46ab58abc454e9fadc77153b8`  
		Last Modified: Wed, 23 May 2018 21:44:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3`

```console
$ docker pull mariadb@sha256:1d3c2915e4907830531ef01b4a3127b369e86e79112e10d34af9b2d23e3b5e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:e65c2879f31236cdca54b40dfd02ea46c6619cb99a7825fff35d4301b91f23c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137472983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4828ff028cad88245f06a5b8b1cb2161b87611181a04285c017983d98032a9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:38:22 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 25 May 2018 20:19:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Fri, 25 May 2018 20:19:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 25 May 2018 20:20:34 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 25 May 2018 20:20:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 25 May 2018 20:20:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 25 May 2018 20:20:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 25 May 2018 20:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 20:20:36 GMT
EXPOSE 3306/tcp
# Fri, 25 May 2018 20:20:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba22c2f9b2bb950db329476903b11da092fb43b448f5b67364a7dde4a950ec9`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f2755c8ecfb79a18335ed6c7c921fcf8e69c82d5d29cef6adc0d41f76aabb`  
		Last Modified: Fri, 25 May 2018 20:21:04 GMT  
		Size: 77.2 MB (77185046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b434a078feb6581ade2b962a793a5a05331aab41cd2cf51126707b147dc78b75`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98296a7c79845b11ed79706bd455c33d37f2a550831350d43e7e0794fd937f`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.7`

```console
$ docker pull mariadb@sha256:1d3c2915e4907830531ef01b4a3127b369e86e79112e10d34af9b2d23e3b5e4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.7` - linux; amd64

```console
$ docker pull mariadb@sha256:e65c2879f31236cdca54b40dfd02ea46c6619cb99a7825fff35d4301b91f23c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137472983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4828ff028cad88245f06a5b8b1cb2161b87611181a04285c017983d98032a9ca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:38:22 GMT
ENV MARIADB_MAJOR=10.3
# Fri, 25 May 2018 20:19:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Fri, 25 May 2018 20:19:42 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Fri, 25 May 2018 20:20:34 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 25 May 2018 20:20:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 25 May 2018 20:20:34 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Fri, 25 May 2018 20:20:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Fri, 25 May 2018 20:20:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 May 2018 20:20:36 GMT
EXPOSE 3306/tcp
# Fri, 25 May 2018 20:20:36 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ba22c2f9b2bb950db329476903b11da092fb43b448f5b67364a7dde4a950ec9`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d46f2755c8ecfb79a18335ed6c7c921fcf8e69c82d5d29cef6adc0d41f76aabb`  
		Last Modified: Fri, 25 May 2018 20:21:04 GMT  
		Size: 77.2 MB (77185046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b434a078feb6581ade2b962a793a5a05331aab41cd2cf51126707b147dc78b75`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 2.6 KB (2606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a98296a7c79845b11ed79706bd455c33d37f2a550831350d43e7e0794fd937f`  
		Last Modified: Fri, 25 May 2018 20:20:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:db58c9fe0424404fc224cdf2d0bbeaf9ab12e1536f93a6c5ee7c3578d6620d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:335c619c87c64c310268b535a7c9ea7dab4f090bfaff2174e7f2b1447b41bde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98173873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf860215d1f41af03dbf17d23180f34a3e107a6f2a13d5c75df7035150743973`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 16:20:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 16:20:04 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 16:20:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 16:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 16:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 16:20:34 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 16:20:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 16:20:37 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Mon, 30 Apr 2018 16:20:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 30 Apr 2018 16:20:53 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 16:20:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:51 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43129a0df16487055366f24c242704b4abb7b44eed7a963aad9f75dd3dee17c9`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3792da1faa8ee858ad158355be006619c8690b15116df4efee64e58db2ffb2e`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 959.9 KB (959858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcac96c7b78cd1ae254abfbf2eb932ca08217a3c202ab11bba8158c06678eb4`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9684182f2449d340dcb035c205b7bbd5b45cfb04fa4a6bad939da6e9a83b7f`  
		Last Modified: Mon, 30 Apr 2018 17:25:50 GMT  
		Size: 4.7 MB (4673767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373cc8171eb25978fcf0b37b1ed77035ced4d76a0281b69c59ad7ea4d75d0c2`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 20.9 KB (20863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6588ac1c2283c2749a9636b6b999d61f1acab62bd1cbcb73c7ea80351c9ab752`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699977231f020c7b8f272f7eef772278a1170abc9a287a30adc2868d58c5a09d`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e561c88a13d62a59a579e0c2f140141cde8ef64dd33f3c30455d237ddd030`  
		Last Modified: Mon, 30 Apr 2018 17:25:59 GMT  
		Size: 53.2 MB (53175024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfcf98d57e02b393fe9855c600650f3651d3c4f818bd09a3d98989a9890c245`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb33e7df72bcfa4806317912fb7a4dc3b71948c83eeaf48cc5e683506b5d032`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:db58c9fe0424404fc224cdf2d0bbeaf9ab12e1536f93a6c5ee7c3578d6620d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:335c619c87c64c310268b535a7c9ea7dab4f090bfaff2174e7f2b1447b41bde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98173873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf860215d1f41af03dbf17d23180f34a3e107a6f2a13d5c75df7035150743973`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 16:20:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 16:20:04 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 16:20:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 16:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 16:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 16:20:34 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 16:20:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 16:20:37 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Mon, 30 Apr 2018 16:20:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 30 Apr 2018 16:20:53 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 16:20:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:51 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43129a0df16487055366f24c242704b4abb7b44eed7a963aad9f75dd3dee17c9`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3792da1faa8ee858ad158355be006619c8690b15116df4efee64e58db2ffb2e`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 959.9 KB (959858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcac96c7b78cd1ae254abfbf2eb932ca08217a3c202ab11bba8158c06678eb4`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9684182f2449d340dcb035c205b7bbd5b45cfb04fa4a6bad939da6e9a83b7f`  
		Last Modified: Mon, 30 Apr 2018 17:25:50 GMT  
		Size: 4.7 MB (4673767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373cc8171eb25978fcf0b37b1ed77035ced4d76a0281b69c59ad7ea4d75d0c2`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 20.9 KB (20863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6588ac1c2283c2749a9636b6b999d61f1acab62bd1cbcb73c7ea80351c9ab752`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699977231f020c7b8f272f7eef772278a1170abc9a287a30adc2868d58c5a09d`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e561c88a13d62a59a579e0c2f140141cde8ef64dd33f3c30455d237ddd030`  
		Last Modified: Mon, 30 Apr 2018 17:25:59 GMT  
		Size: 53.2 MB (53175024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfcf98d57e02b393fe9855c600650f3651d3c4f818bd09a3d98989a9890c245`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb33e7df72bcfa4806317912fb7a4dc3b71948c83eeaf48cc5e683506b5d032`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60`

```console
$ docker pull mariadb@sha256:db58c9fe0424404fc224cdf2d0bbeaf9ab12e1536f93a6c5ee7c3578d6620d2c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.60` - linux; amd64

```console
$ docker pull mariadb@sha256:335c619c87c64c310268b535a7c9ea7dab4f090bfaff2174e7f2b1447b41bde9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98173873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf860215d1f41af03dbf17d23180f34a3e107a6f2a13d5c75df7035150743973`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 16:20:04 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 16:20:04 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 16:20:23 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 16:20:24 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 16:20:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 16:20:34 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 16:20:36 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 16:20:37 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_MAJOR=5.5
# Mon, 30 Apr 2018 16:20:37 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Mon, 30 Apr 2018 16:20:38 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 30 Apr 2018 16:20:53 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 16:20:53 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:49 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:51 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43129a0df16487055366f24c242704b4abb7b44eed7a963aad9f75dd3dee17c9`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3792da1faa8ee858ad158355be006619c8690b15116df4efee64e58db2ffb2e`  
		Last Modified: Mon, 30 Apr 2018 17:25:51 GMT  
		Size: 959.9 KB (959858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fcac96c7b78cd1ae254abfbf2eb932ca08217a3c202ab11bba8158c06678eb4`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9684182f2449d340dcb035c205b7bbd5b45cfb04fa4a6bad939da6e9a83b7f`  
		Last Modified: Mon, 30 Apr 2018 17:25:50 GMT  
		Size: 4.7 MB (4673767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e373cc8171eb25978fcf0b37b1ed77035ced4d76a0281b69c59ad7ea4d75d0c2`  
		Last Modified: Mon, 30 Apr 2018 17:25:49 GMT  
		Size: 20.9 KB (20863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6588ac1c2283c2749a9636b6b999d61f1acab62bd1cbcb73c7ea80351c9ab752`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 316.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:699977231f020c7b8f272f7eef772278a1170abc9a287a30adc2868d58c5a09d`  
		Last Modified: Mon, 30 Apr 2018 17:25:46 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041e561c88a13d62a59a579e0c2f140141cde8ef64dd33f3c30455d237ddd030`  
		Last Modified: Mon, 30 Apr 2018 17:25:59 GMT  
		Size: 53.2 MB (53175024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cfcf98d57e02b393fe9855c600650f3651d3c4f818bd09a3d98989a9890c245`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 2.6 KB (2602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb33e7df72bcfa4806317912fb7a4dc3b71948c83eeaf48cc5e683506b5d032`  
		Last Modified: Wed, 23 May 2018 21:45:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:21cbc4ff14023189c2004cd194976039318f31f2a0de11a3e2a4c85ff7c22fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:9e044879c7ad5f20799931afc8864711eb363e9bd591fc9731f455eac8a2ffc8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.9 MB (136866102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:447a2850813951279d08d8de17bdea3a11a5fbd0b029894c71abcee971d5ac14`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 06:44:15 GMT
ADD file:3e6141c0c9cb74b14a281eb3ab7aaf162a625733e652c3948b323bb2ec8b4343 in / 
# Sat, 28 Apr 2018 06:44:16 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 15:37:27 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 15:37:28 GMT
ENV GOSU_VERSION=1.10
# Mon, 30 Apr 2018 15:37:56 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Mon, 30 Apr 2018 15:37:57 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 15:38:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 15:38:16 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Mon, 30 Apr 2018 15:38:21 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Mon, 30 Apr 2018 15:38:22 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Mon, 30 Apr 2018 15:51:28 GMT
ENV MARIADB_MAJOR=10.2
# Mon, 21 May 2018 21:23:40 GMT
ENV MARIADB_VERSION=10.2.15+maria~jessie
# Mon, 21 May 2018 21:23:41 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Mon, 21 May 2018 21:24:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 May 2018 21:24:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 May 2018 21:43:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 23 May 2018 21:43:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 23 May 2018 21:43:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 May 2018 21:43:27 GMT
EXPOSE 3306/tcp
# Wed, 23 May 2018 21:43:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:3d77ce4481b119f00e53bee9b4a443469c42c224db954ddaa2e6b74cd73cd5d0`  
		Last Modified: Sat, 28 Apr 2018 08:24:47 GMT  
		Size: 54.3 MB (54262566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f6a779d83f57640f88ed719545d1ed334a18d3c33fc9f139892918a096a4d8e`  
		Last Modified: Mon, 30 Apr 2018 16:32:45 GMT  
		Size: 2.1 KB (2093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c1d272f25d5af59f1fd4ef77ceda35839f86b003d508422e3c2df599aea4824`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 988.8 KB (988761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672dd5e0b768c3edb1bbaa087e9429f69a5868fff2d52fe6bdf9b9acfb22a468`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84a7291b59963b500d05381c558ed9f10f7f6c371aad60f9677e999b1f1452a2`  
		Last Modified: Mon, 30 Apr 2018 16:32:44 GMT  
		Size: 5.0 MB (5010207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92edc8e8d33d5d8c415410920d87e13793e39eb14122ba089349f530d5be23e1`  
		Last Modified: Mon, 30 Apr 2018 16:32:43 GMT  
		Size: 20.8 KB (20829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8206781789fc2d99b603104734bf3eae64b1e3e72e81fd17dc7695a13be4`  
		Last Modified: Mon, 30 Apr 2018 16:32:41 GMT  
		Size: 314.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce9fcaa8405e831d89809cec7f1442648b1804d121d69076c54133145f49817`  
		Last Modified: Mon, 21 May 2018 21:24:50 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59ec24cbcca586f3019d7d671b2eab7ee20bc5ca18422fb78b15be337f435896`  
		Last Modified: Mon, 21 May 2018 21:25:01 GMT  
		Size: 76.6 MB (76578170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86bfe0d99a209f5943b75d2ae1804a036dd956479f5e9249e0cc2f30c2c2f774`  
		Last Modified: Wed, 23 May 2018 21:44:20 GMT  
		Size: 2.6 KB (2601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8e32ff261f13d0f84e701cee3857b16d79dbf46ab58abc454e9fadc77153b8`  
		Last Modified: Wed, 23 May 2018 21:44:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
