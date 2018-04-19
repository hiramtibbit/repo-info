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
$ docker pull mysql@sha256:691c55aabb3c4e3b89b953dd2f022f7ea845e5443954767d321d5f5fa394e28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:12e70236ec8be07b87a95008a22deb0a2a6289ac81d852e622ea13e8311cec64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123684558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5195076672a7e30525705a18f7d352c920bbd07a5ae72b30e374081fe660a011`
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
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Wed, 14 Mar 2018 07:47:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:47:51 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 07:47:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:47:52 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:47:53 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:47:53 GMT
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
	-	`sha256:5b5108d08c6de25ab4c9deb68b97ab4730e29a791ed4df8a4eb8be1dc923cd3a`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaff1261757f472efc32ac65001ca49560f36549d9d15d05cf02bc92bc37f19`  
		Last Modified: Wed, 14 Mar 2018 08:10:56 GMT  
		Size: 83.3 MB (83310806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a55c6375b519dfc0e608b14d744836952d8c475b81a4c9626fddf2e758fd01`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 2.7 KB (2681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8181cde51c6516c052322c7a2b0ca6639b86ef4c2439abe153748f04e30e80b0`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7eb55202ef97e669b489772aa205cd025d4a14c31705e42f97821ea836c7e691
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:a1e4f3cd1e5ffc8095c7043b3d523d257c9011cc2e0af371d14ad0f3e8c07fc4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66070770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0da48351c3716b5fc20d86a4af4125296dcb3f9163f27ffdbffac3a840940c62`
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
# Wed, 14 Mar 2018 07:49:01 GMT
ENV MYSQL_VERSION=5.5.59
# Wed, 14 Mar 2018 07:49:43 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 14 Mar 2018 07:49:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 14 Mar 2018 07:49:44 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 14 Mar 2018 07:49:44 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Mar 2018 07:49:45 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:49:45 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:49:46 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:49:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:49:46 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:49:47 GMT
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
	-	`sha256:261ef7652e9c4cd1db7d4f59c300dbffaa789f049ab04059e1c286abb027b9da`  
		Last Modified: Wed, 14 Mar 2018 08:13:00 GMT  
		Size: 27.5 MB (27515859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96a89e6e64674b27f9e03a42d885e52e208228f4f9dac66e43d48ab28b07f671`  
		Last Modified: Wed, 14 Mar 2018 08:12:53 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af68b157f5b90ee213fc1df740e74e203bbe645e0da6ac1f9bebe0bd0bc0bfd2`  
		Last Modified: Wed, 14 Mar 2018 08:12:53 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c331b4725a89ab2bc308a41e98450f36b2b118ed265d3b193ecd41ba1dc5ea16`  
		Last Modified: Wed, 14 Mar 2018 08:12:54 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff0db6367718583eeb87d49d15e5d17048cc371eea3bdd18a4633bbe4a592843`  
		Last Modified: Wed, 14 Mar 2018 08:12:53 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

**does not exist** (yet?)

## `mysql:5.6`

```console
$ docker pull mysql@sha256:a85722079680fb21afc4ce5c7a2cb51fa6d9793efe1c6d3da0e94a2aa9fedac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:40513e9b084ffe09c0ccd9dc1620577e67b33b4aa5038d44bde8517ea09f1f92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82656014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079344ce5ebd3799a203681fe3755dba9e9ea49247af53573e8bfa5d54749eba`
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
# Wed, 14 Mar 2018 07:48:19 GMT
ENV MYSQL_VERSION=5.6.39-1debian9
# Wed, 14 Mar 2018 07:48:20 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:48:35 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 07:48:35 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:48:36 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:48:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:48:37 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:48:37 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:48:37 GMT
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
	-	`sha256:5bfede7d51cef41d58c67bff00b1485bb95a0d10327b8c685d964edf62634491`  
		Last Modified: Wed, 14 Mar 2018 08:12:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d58e230ee6fdad4a1689db3d1afe9074f9a5f1d3a5c3174498762ada6effbf7`  
		Last Modified: Wed, 14 Mar 2018 08:12:16 GMT  
		Size: 44.2 MB (44201924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e83cf84d215b14b51d7a6fbd824714e8af4c4e43d97f077660b85988a402c6ff`  
		Last Modified: Wed, 14 Mar 2018 08:12:06 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a02cf99f4959d779157faf1d9dbf88090eb08bacc3eda4905d84f192d25cf07`  
		Last Modified: Wed, 14 Mar 2018 08:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

**does not exist** (yet?)

## `mysql:5.7`

```console
$ docker pull mysql@sha256:691c55aabb3c4e3b89b953dd2f022f7ea845e5443954767d321d5f5fa394e28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:12e70236ec8be07b87a95008a22deb0a2a6289ac81d852e622ea13e8311cec64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123684558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5195076672a7e30525705a18f7d352c920bbd07a5ae72b30e374081fe660a011`
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
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Wed, 14 Mar 2018 07:47:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:47:51 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 07:47:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:47:52 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:47:53 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:47:53 GMT
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
	-	`sha256:5b5108d08c6de25ab4c9deb68b97ab4730e29a791ed4df8a4eb8be1dc923cd3a`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaff1261757f472efc32ac65001ca49560f36549d9d15d05cf02bc92bc37f19`  
		Last Modified: Wed, 14 Mar 2018 08:10:56 GMT  
		Size: 83.3 MB (83310806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a55c6375b519dfc0e608b14d744836952d8c475b81a4c9626fddf2e758fd01`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 2.7 KB (2681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8181cde51c6516c052322c7a2b0ca6639b86ef4c2439abe153748f04e30e80b0`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

**does not exist** (yet?)

## `mysql:8`

```console
$ docker pull mysql@sha256:7004063f8bd0c7bade8d1c526b9b8f5188c8288f411d76ee4ba83131e00c6f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:00d9833ba2acaac62292df96af346e4e477c47be8b09db3b2d92047ea9843c42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87460365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dd4fed435959a0df283c97076ea08771322bdb02a981c20ee242993ce9de78`
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
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 14 Mar 2018 07:46:03 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:46:12 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Mar 2018 07:46:12 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:46:13 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 14 Mar 2018 07:46:13 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:46:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:46:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:46:14 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:46:15 GMT
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
	-	`sha256:5127cdce4b46399d5467305b6da7711f152db42fa7ee732904420ab4f9277ffb`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20139ed315938304138e7d0159ef66d94f8d2247b5548480bb5dfd3e4b98bf4`  
		Last Modified: Wed, 14 Mar 2018 08:05:38 GMT  
		Size: 47.1 MB (47085718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ba8a8a3dabf5727d3a7cb9f5d3b03118fe85249f5a09c742da6b17c764e4b`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd0f3afb27a8413d82a864b234b5c00cb3faca23dc460620dc5fc64653e7d6`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4872d58e1ff02576eefd0e7450a1b664161cc6ccca654c804299337b740903`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:7004063f8bd0c7bade8d1c526b9b8f5188c8288f411d76ee4ba83131e00c6f02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:00d9833ba2acaac62292df96af346e4e477c47be8b09db3b2d92047ea9843c42
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87460365 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96dd4fed435959a0df283c97076ea08771322bdb02a981c20ee242993ce9de78`
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
# Wed, 14 Mar 2018 07:46:02 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 14 Mar 2018 07:46:03 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:46:12 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 14 Mar 2018 07:46:12 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:46:13 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 14 Mar 2018 07:46:13 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:46:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:46:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:46:14 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:46:15 GMT
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
	-	`sha256:5127cdce4b46399d5467305b6da7711f152db42fa7ee732904420ab4f9277ffb`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e20139ed315938304138e7d0159ef66d94f8d2247b5548480bb5dfd3e4b98bf4`  
		Last Modified: Wed, 14 Mar 2018 08:05:38 GMT  
		Size: 47.1 MB (47085718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ba8a8a3dabf5727d3a7cb9f5d3b03118fe85249f5a09c742da6b17c764e4b`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cd0f3afb27a8413d82a864b234b5c00cb3faca23dc460620dc5fc64653e7d6`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4872d58e1ff02576eefd0e7450a1b664161cc6ccca654c804299337b740903`  
		Last Modified: Wed, 14 Mar 2018 08:05:27 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

**does not exist** (yet?)

## `mysql:latest`

```console
$ docker pull mysql@sha256:691c55aabb3c4e3b89b953dd2f022f7ea845e5443954767d321d5f5fa394e28c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:12e70236ec8be07b87a95008a22deb0a2a6289ac81d852e622ea13e8311cec64
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123684558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5195076672a7e30525705a18f7d352c920bbd07a5ae72b30e374081fe660a011`
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
# Wed, 14 Mar 2018 07:47:28 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Wed, 14 Mar 2018 07:47:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 14 Mar 2018 07:47:51 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 14 Mar 2018 07:47:51 GMT
VOLUME [/var/lib/mysql]
# Wed, 14 Mar 2018 07:47:52 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Wed, 14 Mar 2018 07:47:52 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 14 Mar 2018 07:47:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 14 Mar 2018 07:47:53 GMT
EXPOSE 3306/tcp
# Wed, 14 Mar 2018 07:47:53 GMT
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
	-	`sha256:5b5108d08c6de25ab4c9deb68b97ab4730e29a791ed4df8a4eb8be1dc923cd3a`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beaff1261757f472efc32ac65001ca49560f36549d9d15d05cf02bc92bc37f19`  
		Last Modified: Wed, 14 Mar 2018 08:10:56 GMT  
		Size: 83.3 MB (83310806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a55c6375b519dfc0e608b14d744836952d8c475b81a4c9626fddf2e758fd01`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 2.7 KB (2681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8181cde51c6516c052322c7a2b0ca6639b86ef4c2439abe153748f04e30e80b0`  
		Last Modified: Wed, 14 Mar 2018 08:10:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
