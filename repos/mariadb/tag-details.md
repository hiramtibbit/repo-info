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
$ docker pull mariadb@sha256:8ff94c6e20b647903608e4b0f185399e16566c633b55e57184d4ab0a83510c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10` - linux; amd64

```console
$ docker pull mariadb@sha256:67fce6e2d266a29bd319a541640ee1aa627f90a0757c8a1f362d56d921e5049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1589f26c3ad72e6a4a0bfa6d7c7ba58f76e7e1e04d2ae1fa7fd73dd8bc5cf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Tue, 26 Jun 2018 22:47:43 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:49:08 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:49:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:49:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:49:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:49:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:49:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414d27bc6ed4c6fb173d191eb7a948a0f3029e21dc2f86094cac0a3d61e63bc0`  
		Last Modified: Tue, 26 Jun 2018 22:55:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1159380f98bf3cfb198df585b96b7154babe32027453691f86414ea8211e177a`  
		Last Modified: Tue, 26 Jun 2018 22:56:25 GMT  
		Size: 77.2 MB (77179736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb5335e2b532b25cc91d76a4d0104b6646691e95e8860064a3a15c87a39dd8f`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff753c4d09253a85ddbb52145b1800b447c9bc1161deff50fb4d9963fdc9dd`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0`

```console
$ docker pull mariadb@sha256:5dd51d4754cc083596f8df1d807ce7d724072695c8abb30c9a13727c906765ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0` - linux; amd64

```console
$ docker pull mariadb@sha256:367260b4e4b065845604f32f9bb1a9efe5b3f29dda5ea686a856939e8694684e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120965787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47faf9216f3299e963be9b60eb350edd9df8fa21dbd2f3275672998c300f2578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:52:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 26 Jun 2018 22:52:46 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 26 Jun 2018 22:52:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:54:07 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:54:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:54:08 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:54:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:54:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:54:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:54:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5de0386fad3307618d6fe85eec4f33fde099d898b0f751bde45c1a16ee420`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256d5b17d7e91b9c7ee5e69eb1574a44c67264757d7351a87117cf08dbef685`  
		Last Modified: Tue, 26 Jun 2018 22:58:19 GMT  
		Size: 60.7 MB (60687872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1500739b2f537a2c977c1744fada30eb5d06914b37652821f270240160224f`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf94b2dc608303d4014befb2aeb4f7fb04bde39ea16596eff19f60a4c4386dc`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.0.35`

```console
$ docker pull mariadb@sha256:5dd51d4754cc083596f8df1d807ce7d724072695c8abb30c9a13727c906765ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.0.35` - linux; amd64

```console
$ docker pull mariadb@sha256:367260b4e4b065845604f32f9bb1a9efe5b3f29dda5ea686a856939e8694684e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.0 MB (120965787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47faf9216f3299e963be9b60eb350edd9df8fa21dbd2f3275672998c300f2578`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:52:46 GMT
ENV MARIADB_MAJOR=10.0
# Tue, 26 Jun 2018 22:52:46 GMT
ENV MARIADB_VERSION=10.0.35+maria-1~jessie
# Tue, 26 Jun 2018 22:52:47 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:54:07 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:54:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:54:08 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:54:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:54:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:54:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:54:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e5de0386fad3307618d6fe85eec4f33fde099d898b0f751bde45c1a16ee420`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7256d5b17d7e91b9c7ee5e69eb1574a44c67264757d7351a87117cf08dbef685`  
		Last Modified: Tue, 26 Jun 2018 22:58:19 GMT  
		Size: 60.7 MB (60687872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a1500739b2f537a2c977c1744fada30eb5d06914b37652821f270240160224f`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bf94b2dc608303d4014befb2aeb4f7fb04bde39ea16596eff19f60a4c4386dc`  
		Last Modified: Tue, 26 Jun 2018 22:57:57 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1`

```console
$ docker pull mariadb@sha256:45bae2dac7fa774c485498ad598a7780b7baf9ce0893268bf8b16d091e65de37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1` - linux; amd64

```console
$ docker pull mariadb@sha256:8c8c02cd55574d509ee89f5630934f757e6444d4a096910d646bd9deae1c6a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136622639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039767c123ac06575de56834d4dc6c17507a3e55b8cb6e44be88f13da1e26b28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:51:02 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 26 Jun 2018 22:51:02 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 26 Jun 2018 22:51:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:52:25 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:52:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:52:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:52:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:52:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:52:27 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:52:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef890b78ef290a67248a33fcd9de6b7b07a1d40589f74caa1f6cef15e97edb3`  
		Last Modified: Tue, 26 Jun 2018 22:57:07 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0450b7cc9e3099207cfad8e891f4755d389e3839b0bf29d1df9554341ccabd3`  
		Last Modified: Tue, 26 Jun 2018 22:57:34 GMT  
		Size: 76.3 MB (76344723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbb1c838f7250babad054f8eadd8781335b07c147ec7fca7281347b5bb53696`  
		Last Modified: Tue, 26 Jun 2018 22:57:07 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36848e6229ba33930b6076ca516c5a83a189533210181b49aecf9af60f9df5cb`  
		Last Modified: Tue, 26 Jun 2018 22:57:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.1.34`

```console
$ docker pull mariadb@sha256:45bae2dac7fa774c485498ad598a7780b7baf9ce0893268bf8b16d091e65de37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.1.34` - linux; amd64

```console
$ docker pull mariadb@sha256:8c8c02cd55574d509ee89f5630934f757e6444d4a096910d646bd9deae1c6a5c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.6 MB (136622639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039767c123ac06575de56834d4dc6c17507a3e55b8cb6e44be88f13da1e26b28`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:51:02 GMT
ENV MARIADB_MAJOR=10.1
# Tue, 26 Jun 2018 22:51:02 GMT
ENV MARIADB_VERSION=10.1.34+maria-1~jessie
# Tue, 26 Jun 2018 22:51:03 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:52:25 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:52:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:52:26 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:52:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:52:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:52:27 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:52:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef890b78ef290a67248a33fcd9de6b7b07a1d40589f74caa1f6cef15e97edb3`  
		Last Modified: Tue, 26 Jun 2018 22:57:07 GMT  
		Size: 322.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0450b7cc9e3099207cfad8e891f4755d389e3839b0bf29d1df9554341ccabd3`  
		Last Modified: Tue, 26 Jun 2018 22:57:34 GMT  
		Size: 76.3 MB (76344723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cbb1c838f7250babad054f8eadd8781335b07c147ec7fca7281347b5bb53696`  
		Last Modified: Tue, 26 Jun 2018 22:57:07 GMT  
		Size: 2.6 KB (2599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36848e6229ba33930b6076ca516c5a83a189533210181b49aecf9af60f9df5cb`  
		Last Modified: Tue, 26 Jun 2018 22:57:06 GMT  
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
$ docker pull mariadb@sha256:8ff94c6e20b647903608e4b0f185399e16566c633b55e57184d4ab0a83510c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3` - linux; amd64

```console
$ docker pull mariadb@sha256:67fce6e2d266a29bd319a541640ee1aa627f90a0757c8a1f362d56d921e5049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1589f26c3ad72e6a4a0bfa6d7c7ba58f76e7e1e04d2ae1fa7fd73dd8bc5cf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Tue, 26 Jun 2018 22:47:43 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:49:08 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:49:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:49:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:49:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:49:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:49:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414d27bc6ed4c6fb173d191eb7a948a0f3029e21dc2f86094cac0a3d61e63bc0`  
		Last Modified: Tue, 26 Jun 2018 22:55:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1159380f98bf3cfb198df585b96b7154babe32027453691f86414ea8211e177a`  
		Last Modified: Tue, 26 Jun 2018 22:56:25 GMT  
		Size: 77.2 MB (77179736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb5335e2b532b25cc91d76a4d0104b6646691e95e8860064a3a15c87a39dd8f`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff753c4d09253a85ddbb52145b1800b447c9bc1161deff50fb4d9963fdc9dd`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:10.3.7`

```console
$ docker pull mariadb@sha256:8ff94c6e20b647903608e4b0f185399e16566c633b55e57184d4ab0a83510c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:10.3.7` - linux; amd64

```console
$ docker pull mariadb@sha256:67fce6e2d266a29bd319a541640ee1aa627f90a0757c8a1f362d56d921e5049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1589f26c3ad72e6a4a0bfa6d7c7ba58f76e7e1e04d2ae1fa7fd73dd8bc5cf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Tue, 26 Jun 2018 22:47:43 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:49:08 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:49:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:49:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:49:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:49:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:49:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414d27bc6ed4c6fb173d191eb7a948a0f3029e21dc2f86094cac0a3d61e63bc0`  
		Last Modified: Tue, 26 Jun 2018 22:55:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1159380f98bf3cfb198df585b96b7154babe32027453691f86414ea8211e177a`  
		Last Modified: Tue, 26 Jun 2018 22:56:25 GMT  
		Size: 77.2 MB (77179736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb5335e2b532b25cc91d76a4d0104b6646691e95e8860064a3a15c87a39dd8f`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff753c4d09253a85ddbb52145b1800b447c9bc1161deff50fb4d9963fdc9dd`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5`

```console
$ docker pull mariadb@sha256:a804c0cb68745224cdc13187ddb8ca436c1320d11edfa12074653e6cc6cfdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5` - linux; amd64

```console
$ docker pull mariadb@sha256:18be41abc798836b4995072a8375dd7f7b99c13afcf84fa9a29cfefd7c71205a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ba6794ffa71a8998424d8420b35cb1010e0d4963f04423cd8180d1cda65c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:54:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:54:53 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:54:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:55:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:55:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:55:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:55:09 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 26 Jun 2018 22:55:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:55:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:55:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:55:33 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:55:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:55:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c093df01428ecd301dcb3fc3978c07bc268f672e981c686da9d60abd7feaa868`  
		Last Modified: Tue, 26 Jun 2018 22:58:47 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f312305744d89eb39894fee246dffd27251d40b52642afd778d040b77c9d6e`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 959.8 KB (959848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eab2c23a310044dfad7698ac5e2a815df8992be304095b1b45dc4711369d3d`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6b76522029ce7e881a9ce6898d204879c63fe75445d49a6fa497db625d70af`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 4.7 MB (4674120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286fd80a628b9407a57ddb80442ec07ca2dbe875c44e1b3e6321947734a476f5`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e68d6c03472de6a0aa4e432f18917784567a5455cc026a21ed88f69e323a8c0`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40333ffae6cbe3a3f5785653686f08c7875ae3469b1b6d6a2c7407cf5fbb103`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178b0c6577b4accbd4d672a0fd8c9458da83193cdf8917c1c08c6fd9b2e2392b`  
		Last Modified: Tue, 26 Jun 2018 22:59:00 GMT  
		Size: 53.2 MB (53174916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfab5466539888d0f8d109de258d2893db252ad32959489cf3ab8a4f9cf59b2e`  
		Last Modified: Tue, 26 Jun 2018 22:58:43 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e23e2de2477f439e0a671541768b73c1b1f728049b729900fdfa482071cac6a`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5`

```console
$ docker pull mariadb@sha256:a804c0cb68745224cdc13187ddb8ca436c1320d11edfa12074653e6cc6cfdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5` - linux; amd64

```console
$ docker pull mariadb@sha256:18be41abc798836b4995072a8375dd7f7b99c13afcf84fa9a29cfefd7c71205a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ba6794ffa71a8998424d8420b35cb1010e0d4963f04423cd8180d1cda65c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:54:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:54:53 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:54:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:55:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:55:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:55:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:55:09 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 26 Jun 2018 22:55:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:55:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:55:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:55:33 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:55:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:55:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c093df01428ecd301dcb3fc3978c07bc268f672e981c686da9d60abd7feaa868`  
		Last Modified: Tue, 26 Jun 2018 22:58:47 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f312305744d89eb39894fee246dffd27251d40b52642afd778d040b77c9d6e`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 959.8 KB (959848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eab2c23a310044dfad7698ac5e2a815df8992be304095b1b45dc4711369d3d`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6b76522029ce7e881a9ce6898d204879c63fe75445d49a6fa497db625d70af`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 4.7 MB (4674120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286fd80a628b9407a57ddb80442ec07ca2dbe875c44e1b3e6321947734a476f5`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e68d6c03472de6a0aa4e432f18917784567a5455cc026a21ed88f69e323a8c0`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40333ffae6cbe3a3f5785653686f08c7875ae3469b1b6d6a2c7407cf5fbb103`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178b0c6577b4accbd4d672a0fd8c9458da83193cdf8917c1c08c6fd9b2e2392b`  
		Last Modified: Tue, 26 Jun 2018 22:59:00 GMT  
		Size: 53.2 MB (53174916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfab5466539888d0f8d109de258d2893db252ad32959489cf3ab8a4f9cf59b2e`  
		Last Modified: Tue, 26 Jun 2018 22:58:43 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e23e2de2477f439e0a671541768b73c1b1f728049b729900fdfa482071cac6a`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:5.5.60`

```console
$ docker pull mariadb@sha256:a804c0cb68745224cdc13187ddb8ca436c1320d11edfa12074653e6cc6cfdf07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:5.5.60` - linux; amd64

```console
$ docker pull mariadb@sha256:18be41abc798836b4995072a8375dd7f7b99c13afcf84fa9a29cfefd7c71205a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.2 MB (98174654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:902ba6794ffa71a8998424d8420b35cb1010e0d4963f04423cd8180d1cda65c2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:54:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:54:35 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:54:53 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:54:54 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:55:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:55:07 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:55:08 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:55:09 GMT
RUN echo "deb https://repo.percona.com/apt wheezy main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_MAJOR=5.5
# Tue, 26 Jun 2018 22:55:09 GMT
ENV MARIADB_VERSION=5.5.60+maria-1~wheezy
# Tue, 26 Jun 2018 22:55:10 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian wheezy main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:55:32 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:55:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:55:33 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:55:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:55:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:55:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:55:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c093df01428ecd301dcb3fc3978c07bc268f672e981c686da9d60abd7feaa868`  
		Last Modified: Tue, 26 Jun 2018 22:58:47 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8f312305744d89eb39894fee246dffd27251d40b52642afd778d040b77c9d6e`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 959.8 KB (959848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65eab2c23a310044dfad7698ac5e2a815df8992be304095b1b45dc4711369d3d`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6b76522029ce7e881a9ce6898d204879c63fe75445d49a6fa497db625d70af`  
		Last Modified: Tue, 26 Jun 2018 22:58:46 GMT  
		Size: 4.7 MB (4674120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:286fd80a628b9407a57ddb80442ec07ca2dbe875c44e1b3e6321947734a476f5`  
		Last Modified: Tue, 26 Jun 2018 22:58:45 GMT  
		Size: 20.9 KB (20865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e68d6c03472de6a0aa4e432f18917784567a5455cc026a21ed88f69e323a8c0`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e40333ffae6cbe3a3f5785653686f08c7875ae3469b1b6d6a2c7407cf5fbb103`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 326.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178b0c6577b4accbd4d672a0fd8c9458da83193cdf8917c1c08c6fd9b2e2392b`  
		Last Modified: Tue, 26 Jun 2018 22:59:00 GMT  
		Size: 53.2 MB (53174916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfab5466539888d0f8d109de258d2893db252ad32959489cf3ab8a4f9cf59b2e`  
		Last Modified: Tue, 26 Jun 2018 22:58:43 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e23e2de2477f439e0a671541768b73c1b1f728049b729900fdfa482071cac6a`  
		Last Modified: Tue, 26 Jun 2018 22:58:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mariadb:latest`

```console
$ docker pull mariadb@sha256:8ff94c6e20b647903608e4b0f185399e16566c633b55e57184d4ab0a83510c66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:latest` - linux; amd64

```console
$ docker pull mariadb@sha256:67fce6e2d266a29bd319a541640ee1aa627f90a0757c8a1f362d56d921e5049b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137457651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d1589f26c3ad72e6a4a0bfa6d7c7ba58f76e7e1e04d2ae1fa7fd73dd8bc5cf4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_MAJOR=10.3
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_VERSION=1:10.3.7+maria~jessie
# Tue, 26 Jun 2018 22:47:43 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Tue, 26 Jun 2018 22:49:08 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 22:49:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 22:49:09 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Tue, 26 Jun 2018 22:49:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Tue, 26 Jun 2018 22:49:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 22:49:10 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 22:49:10 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414d27bc6ed4c6fb173d191eb7a948a0f3029e21dc2f86094cac0a3d61e63bc0`  
		Last Modified: Tue, 26 Jun 2018 22:55:59 GMT  
		Size: 323.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1159380f98bf3cfb198df585b96b7154babe32027453691f86414ea8211e177a`  
		Last Modified: Tue, 26 Jun 2018 22:56:25 GMT  
		Size: 77.2 MB (77179736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0eb5335e2b532b25cc91d76a4d0104b6646691e95e8860064a3a15c87a39dd8f`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 2.6 KB (2597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fff753c4d09253a85ddbb52145b1800b447c9bc1161deff50fb4d9963fdc9dd`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
