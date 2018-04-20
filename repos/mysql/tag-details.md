<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.60`](#mysql5560)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.40`](#mysql5640)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.22`](#mysql5722)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.11`](#mysql8011)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:e7b486e5548a3f1ef98c6571a44a0e8371a449a4b45e6f7f0e765842c10560f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:3c993a4fe9bf642fa160289187f9b377c758cb75cc9e63c61a977fdc40d96b65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123836419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0164c13b662c941a56efb189041d23bf49380cebd93e88bba9fed6aa79ad73b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 20 Apr 2018 08:46:53 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 20 Apr 2018 08:46:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:47:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 20 Apr 2018 08:47:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:47:16 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:47:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:47:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:47:17 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:47:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55ce706eb7fd527e7d429c55a92049bc13a004be1e2f1f194b982cbf57dc2c`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19001513ac1bc2c8689b8b47dbeaad28930b21269fb0bde3709e8420525dd6b`  
		Last Modified: Fri, 20 Apr 2018 09:35:23 GMT  
		Size: 83.5 MB (83462668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a338185fc63641e2f2ad0df8bc15dfaedc0212d118b7028aca162f7cb01e2764`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 2.7 KB (2680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94202acee04ba6a5db49c554bcfd1dfc829ae3a97203b49294770d22f76548cf`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:2c0f6d353d391379b776f2a6ba39121b7e0f4f413941ea245efa252c0a45f30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:c51cc9ea3756a03313478a8d2f40b373ed302e3466ce62cac147e936e4dcd957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66052494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f010dab7b20d7372cb7cbe371e08a9097afe6e49911ddd03ab58f5336c365c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:49:00 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 20 Apr 2018 09:07:46 GMT
ENV MYSQL_VERSION=5.5.60
# Fri, 20 Apr 2018 09:08:23 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 20 Apr 2018 09:08:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 20 Apr 2018 09:08:24 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 20 Apr 2018 09:08:25 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 09:08:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 09:08:26 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Fri, 20 Apr 2018 09:08:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 09:08:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 09:08:27 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 09:08:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ab584f99119ccb1c2a99c466abc8bda8ff567b7f5a2303c90800e1cab7f54`  
		Last Modified: Wed, 14 Mar 2018 08:12:59 GMT  
		Size: 10.3 MB (10291948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4782f8a625033a9b36ac0fe80cd349d6c04572f957670ae49173b6660db2e16`  
		Last Modified: Fri, 20 Apr 2018 09:46:58 GMT  
		Size: 27.5 MB (27497579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7fb6e5400c56bb2783416250fa0b4c54ade1733f5be43a570ef5c932400ab0`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e79218a8e0c4b08a19ded0a6db16f6c3ca41da5cab572d0194ad8d2316e68b8`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a907d8179282324cf43bbb4d84f666adbf785c97cb7440c29de06202be2713`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0642049c7eadaed65a55976e76d6d6f358e9a0cf64f9fe93eb2d4b8d9e0864`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:2c0f6d353d391379b776f2a6ba39121b7e0f4f413941ea245efa252c0a45f30c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:c51cc9ea3756a03313478a8d2f40b373ed302e3466ce62cac147e936e4dcd957
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66052494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f010dab7b20d7372cb7cbe371e08a9097afe6e49911ddd03ab58f5336c365c8b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:49:00 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 20 Apr 2018 09:07:46 GMT
ENV MYSQL_VERSION=5.5.60
# Fri, 20 Apr 2018 09:08:23 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 20 Apr 2018 09:08:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 20 Apr 2018 09:08:24 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 20 Apr 2018 09:08:25 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 09:08:25 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 09:08:26 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Fri, 20 Apr 2018 09:08:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 09:08:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 09:08:27 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 09:08:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d04ab584f99119ccb1c2a99c466abc8bda8ff567b7f5a2303c90800e1cab7f54`  
		Last Modified: Wed, 14 Mar 2018 08:12:59 GMT  
		Size: 10.3 MB (10291948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4782f8a625033a9b36ac0fe80cd349d6c04572f957670ae49173b6660db2e16`  
		Last Modified: Fri, 20 Apr 2018 09:46:58 GMT  
		Size: 27.5 MB (27497579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d7fb6e5400c56bb2783416250fa0b4c54ade1733f5be43a570ef5c932400ab0`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e79218a8e0c4b08a19ded0a6db16f6c3ca41da5cab572d0194ad8d2316e68b8`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a907d8179282324cf43bbb4d84f666adbf785c97cb7440c29de06202be2713`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 2.7 KB (2692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b0642049c7eadaed65a55976e76d6d6f358e9a0cf64f9fe93eb2d4b8d9e0864`  
		Last Modified: Fri, 20 Apr 2018 09:46:52 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:367d1682c9da0bbf4cb8fe19bf4a22ad8cac39a5561c692684d123a3543aaf33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:d28128bb1d788b9289accc15389bb3a332e30cf757916d7a94749c4b805cc298
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82661297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478282eec252ad531541fe86bc55150620067caeb45273c5ba52bcf92db1d654`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:48:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:48:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:48:19 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 20 Apr 2018 08:57:45 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Fri, 20 Apr 2018 08:57:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:58:04 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 20 Apr 2018 08:58:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:58:05 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:58:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:58:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:58:06 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:58:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6762c4c3eacce6c3dddceeb17ec19ac8c711b9c1c70d4db69a0862bdea6d8595`  
		Last Modified: Wed, 14 Mar 2018 08:12:12 GMT  
		Size: 10.2 MB (10170032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9e7799488e6fcbfc8a6460c28863bd61fbdc1bf19f7df2e091b669368f6831`  
		Last Modified: Wed, 14 Mar 2018 08:12:06 GMT  
		Size: 21.3 KB (21312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d578bb6c17ad135c55c91c62ba798ba19e6d6b662f1aa6d9a844d48081588`  
		Last Modified: Fri, 20 Apr 2018 09:45:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397722a8effcfbb764c01073216355904d3cd734cef4167d67f08aef607f0c15`  
		Last Modified: Fri, 20 Apr 2018 09:46:06 GMT  
		Size: 44.2 MB (44207207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea72745bb38e187f7d260ac5de12dee13f7ad450205a3818707e91968d61eed`  
		Last Modified: Fri, 20 Apr 2018 09:45:56 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3870a40c927855c7c20becf7058b957610a0cd84ca84e7d1721d6e0dcb8a7f4a`  
		Last Modified: Fri, 20 Apr 2018 09:45:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:367d1682c9da0bbf4cb8fe19bf4a22ad8cac39a5561c692684d123a3543aaf33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:d28128bb1d788b9289accc15389bb3a332e30cf757916d7a94749c4b805cc298
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82661297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478282eec252ad531541fe86bc55150620067caeb45273c5ba52bcf92db1d654`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:48:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:48:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:48:19 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 20 Apr 2018 08:57:45 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Fri, 20 Apr 2018 08:57:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:58:04 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 20 Apr 2018 08:58:04 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:58:05 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:58:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:58:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:58:06 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:58:06 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6762c4c3eacce6c3dddceeb17ec19ac8c711b9c1c70d4db69a0862bdea6d8595`  
		Last Modified: Wed, 14 Mar 2018 08:12:12 GMT  
		Size: 10.2 MB (10170032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9e7799488e6fcbfc8a6460c28863bd61fbdc1bf19f7df2e091b669368f6831`  
		Last Modified: Wed, 14 Mar 2018 08:12:06 GMT  
		Size: 21.3 KB (21312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f61d578bb6c17ad135c55c91c62ba798ba19e6d6b662f1aa6d9a844d48081588`  
		Last Modified: Fri, 20 Apr 2018 09:45:56 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:397722a8effcfbb764c01073216355904d3cd734cef4167d67f08aef607f0c15`  
		Last Modified: Fri, 20 Apr 2018 09:46:06 GMT  
		Size: 44.2 MB (44207207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea72745bb38e187f7d260ac5de12dee13f7ad450205a3818707e91968d61eed`  
		Last Modified: Fri, 20 Apr 2018 09:45:56 GMT  
		Size: 2.7 KB (2662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3870a40c927855c7c20becf7058b957610a0cd84ca84e7d1721d6e0dcb8a7f4a`  
		Last Modified: Fri, 20 Apr 2018 09:45:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:e7b486e5548a3f1ef98c6571a44a0e8371a449a4b45e6f7f0e765842c10560f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:3c993a4fe9bf642fa160289187f9b377c758cb75cc9e63c61a977fdc40d96b65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123836419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0164c13b662c941a56efb189041d23bf49380cebd93e88bba9fed6aa79ad73b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 20 Apr 2018 08:46:53 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 20 Apr 2018 08:46:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:47:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 20 Apr 2018 08:47:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:47:16 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:47:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:47:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:47:17 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:47:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55ce706eb7fd527e7d429c55a92049bc13a004be1e2f1f194b982cbf57dc2c`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19001513ac1bc2c8689b8b47dbeaad28930b21269fb0bde3709e8420525dd6b`  
		Last Modified: Fri, 20 Apr 2018 09:35:23 GMT  
		Size: 83.5 MB (83462668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a338185fc63641e2f2ad0df8bc15dfaedc0212d118b7028aca162f7cb01e2764`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 2.7 KB (2680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94202acee04ba6a5db49c554bcfd1dfc829ae3a97203b49294770d22f76548cf`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:e7b486e5548a3f1ef98c6571a44a0e8371a449a4b45e6f7f0e765842c10560f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:3c993a4fe9bf642fa160289187f9b377c758cb75cc9e63c61a977fdc40d96b65
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123836419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0164c13b662c941a56efb189041d23bf49380cebd93e88bba9fed6aa79ad73b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 20 Apr 2018 08:46:53 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 20 Apr 2018 08:46:54 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:47:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 20 Apr 2018 08:47:16 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:47:16 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:47:17 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:47:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:47:17 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:47:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d55ce706eb7fd527e7d429c55a92049bc13a004be1e2f1f194b982cbf57dc2c`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19001513ac1bc2c8689b8b47dbeaad28930b21269fb0bde3709e8420525dd6b`  
		Last Modified: Fri, 20 Apr 2018 09:35:23 GMT  
		Size: 83.5 MB (83462668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a338185fc63641e2f2ad0df8bc15dfaedc0212d118b7028aca162f7cb01e2764`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 2.7 KB (2680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94202acee04ba6a5db49c554bcfd1dfc829ae3a97203b49294770d22f76548cf`  
		Last Modified: Fri, 20 Apr 2018 09:35:07 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:6d985a966d7bfd05b8f3a965d3da5e7f6da4a8f87cc645ddab7565c4eaf6d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:001ad5ef37c5eefe4e0f0b0abfd5eed75d20fa0d3d244a7a2b572f354b2faad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127029462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d65ec712c69a27e2b9064f2fef307849775687d270e9ab5b79fd17dcd31b16e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 20 Apr 2018 08:35:17 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 20 Apr 2018 08:35:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:35:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 08:35:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:35:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 20 Apr 2018 08:35:35 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:35:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:35:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:35:37 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:35:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baca4eb0e319ec87c51503c4f4ad15dd729f737733d5d32f0083826451512c`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3288bceb92d84ec723e05c645c7e738262ba50fc6d7b6d8337068a941ce10f9`  
		Last Modified: Fri, 20 Apr 2018 09:19:43 GMT  
		Size: 86.7 MB (86654737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410aa06ed26b746045beeb90693302ab296e6ed46f6aa644cfee2c858378e52e`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d828875da7ddef2536706303b5aa9b85840c02fc423710d56b90593914aef07`  
		Last Modified: Fri, 20 Apr 2018 09:19:25 GMT  
		Size: 2.8 KB (2758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc67dc49caa3c28272b2eebe9a3246128455f4c30fe0d01b6bbb8489c7085aa`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:6d985a966d7bfd05b8f3a965d3da5e7f6da4a8f87cc645ddab7565c4eaf6d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:001ad5ef37c5eefe4e0f0b0abfd5eed75d20fa0d3d244a7a2b572f354b2faad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127029462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d65ec712c69a27e2b9064f2fef307849775687d270e9ab5b79fd17dcd31b16e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 20 Apr 2018 08:35:17 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 20 Apr 2018 08:35:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:35:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 08:35:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:35:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 20 Apr 2018 08:35:35 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:35:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:35:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:35:37 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:35:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baca4eb0e319ec87c51503c4f4ad15dd729f737733d5d32f0083826451512c`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3288bceb92d84ec723e05c645c7e738262ba50fc6d7b6d8337068a941ce10f9`  
		Last Modified: Fri, 20 Apr 2018 09:19:43 GMT  
		Size: 86.7 MB (86654737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410aa06ed26b746045beeb90693302ab296e6ed46f6aa644cfee2c858378e52e`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d828875da7ddef2536706303b5aa9b85840c02fc423710d56b90593914aef07`  
		Last Modified: Fri, 20 Apr 2018 09:19:25 GMT  
		Size: 2.8 KB (2758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc67dc49caa3c28272b2eebe9a3246128455f4c30fe0d01b6bbb8489c7085aa`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:6d985a966d7bfd05b8f3a965d3da5e7f6da4a8f87cc645ddab7565c4eaf6d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:001ad5ef37c5eefe4e0f0b0abfd5eed75d20fa0d3d244a7a2b572f354b2faad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127029462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d65ec712c69a27e2b9064f2fef307849775687d270e9ab5b79fd17dcd31b16e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 20 Apr 2018 08:35:17 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 20 Apr 2018 08:35:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:35:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 08:35:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:35:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 20 Apr 2018 08:35:35 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:35:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:35:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:35:37 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:35:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baca4eb0e319ec87c51503c4f4ad15dd729f737733d5d32f0083826451512c`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3288bceb92d84ec723e05c645c7e738262ba50fc6d7b6d8337068a941ce10f9`  
		Last Modified: Fri, 20 Apr 2018 09:19:43 GMT  
		Size: 86.7 MB (86654737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410aa06ed26b746045beeb90693302ab296e6ed46f6aa644cfee2c858378e52e`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d828875da7ddef2536706303b5aa9b85840c02fc423710d56b90593914aef07`  
		Last Modified: Fri, 20 Apr 2018 09:19:25 GMT  
		Size: 2.8 KB (2758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc67dc49caa3c28272b2eebe9a3246128455f4c30fe0d01b6bbb8489c7085aa`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:6d985a966d7bfd05b8f3a965d3da5e7f6da4a8f87cc645ddab7565c4eaf6d2bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:001ad5ef37c5eefe4e0f0b0abfd5eed75d20fa0d3d244a7a2b572f354b2faad4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127029462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d65ec712c69a27e2b9064f2fef307849775687d270e9ab5b79fd17dcd31b16e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:45:05 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 14 Mar 2018 07:45:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:45:14 GMT
ENV GOSU_VERSION=1.7
# Wed, 14 Mar 2018 07:45:52 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 14 Mar 2018 07:45:53 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 14 Mar 2018 07:45:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:46:02 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 20 Apr 2018 08:35:17 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 20 Apr 2018 08:35:18 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 20 Apr 2018 08:35:34 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 20 Apr 2018 08:35:34 GMT
VOLUME [/var/lib/mysql]
# Fri, 20 Apr 2018 08:35:35 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 20 Apr 2018 08:35:35 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Fri, 20 Apr 2018 08:35:36 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 20 Apr 2018 08:35:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Apr 2018 08:35:37 GMT
EXPOSE 3306/tcp
# Fri, 20 Apr 2018 08:35:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38680a9b47a889afdad30e2b778870f30b2adfb670996da71d32fef815446b32`  
		Last Modified: Wed, 14 Mar 2018 08:05:32 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c732aa0eb1bf8ee7a7dfdb2acdb3d1579110241fe47747d2b14a77e2cb504e2`  
		Last Modified: Wed, 14 Mar 2018 08:05:33 GMT  
		Size: 4.5 MB (4498488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5317a34eddd75b2b48e525137d7d7adc1cbba157fe58eb2fc60bf93b68c7b28`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 1.3 MB (1270416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92be680366c04fd6f6389a6d54d675219999b5af8d26146855f65cdba9fb79d`  
		Last Modified: Wed, 14 Mar 2018 08:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8ecd8bec5abc5756bbbd1df8ddbe1a353ed521659cfeffeea3c0beed5b9edf2`  
		Last Modified: Wed, 14 Mar 2018 08:05:35 GMT  
		Size: 12.1 MB (12089678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a650284a6a80b0d6c4e22f2bd30138dbc439743c5ffc2f1aed4f0a46bb4a5f9`  
		Last Modified: Wed, 14 Mar 2018 08:05:29 GMT  
		Size: 21.3 KB (21308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baca4eb0e319ec87c51503c4f4ad15dd729f737733d5d32f0083826451512c`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3288bceb92d84ec723e05c645c7e738262ba50fc6d7b6d8337068a941ce10f9`  
		Last Modified: Fri, 20 Apr 2018 09:19:43 GMT  
		Size: 86.7 MB (86654737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:410aa06ed26b746045beeb90693302ab296e6ed46f6aa644cfee2c858378e52e`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 898.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d828875da7ddef2536706303b5aa9b85840c02fc423710d56b90593914aef07`  
		Last Modified: Fri, 20 Apr 2018 09:19:25 GMT  
		Size: 2.8 KB (2758 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cc67dc49caa3c28272b2eebe9a3246128455f4c30fe0d01b6bbb8489c7085aa`  
		Last Modified: Fri, 20 Apr 2018 09:19:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
