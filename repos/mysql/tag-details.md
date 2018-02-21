<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.59`](#mysql5559)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.39`](#mysql5639)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.21`](#mysql5721)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.4`](#mysql804)
-	[`mysql:8.0.4-rc`](#mysql804-rc)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:4f9323cb4aeca062fd1a341b50c7721b9aef6bff3ded806dec0897323b8b7be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:583f324dba8a7f603b7621595f2287a3ab4044cc06d0a1d86d513f4f72346558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144386985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f3956a9dd825e3195f0d1a4fe17cc94b0f6934fc470b09abf8fad87d17ff24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:40:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:40:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_VERSION=5.7.21-1debian8
# Sat, 17 Feb 2018 08:48:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:48:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:48:52 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:48:53 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:49:07 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:49:07 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6a6ff8ae838b11d953dec6600f56726ca0e38f0b880a35032f008adf61bfb`  
		Last Modified: Sat, 17 Feb 2018 09:00:35 GMT  
		Size: 10.7 MB (10711132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af71dde5fa231b5d633cbbf558b6c2d4c66ae4442f1b1175b1446ed744ecbe34`  
		Last Modified: Sat, 17 Feb 2018 09:00:28 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546980014e44691c27f14014bc9d01a0f58ab0447b3725b57c4ca48466154cf`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525a4f1d664f73519bb3161a5d0c4550ae85a3a0e0d072ed56a54ac25d92bb3`  
		Last Modified: Sat, 17 Feb 2018 09:02:04 GMT  
		Size: 79.7 MB (79738505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af610cdb41735006aa5b49f2c0e97fbbdade11c3b969d1f5ffdba65f91530262`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 2.7 KB (2738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe36edc2517a739e6a1f3d193a5681bcf141faef5319edf2ad23e80110191a69`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:0e7ffb9184df8f09d2c64e8bad7eecb0f7f33902e5c1f3cff573c0c8d7253661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:08ecc7364e2924f5021694cce15bea8ce589288cdf5e830de4cfd55e98187edf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90206819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06806d6423e2f1f1c23ed1b81fb4631b2d455ba743677730bea71b63196979a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:51:53 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:52:06 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:52:13 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 17 Feb 2018 08:52:14 GMT
ENV MYSQL_VERSION=5.5.59
# Sat, 17 Feb 2018 08:53:13 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 17 Feb 2018 08:59:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 17 Feb 2018 08:59:27 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 17 Feb 2018 08:59:28 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 17 Feb 2018 08:59:28 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:59:40 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:59:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:59:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:59:42 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:59:42 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3d53e610e420ee6ecbf8d86889052b3d0a35e0a29c9312e8b8cfcb8ad8608`  
		Last Modified: Sat, 17 Feb 2018 09:04:43 GMT  
		Size: 8.4 MB (8441624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b5e69a0970253e8c4d03eeb2b0b4b339b594bcfe4e94eba14c10026be5f40`  
		Last Modified: Sat, 17 Feb 2018 09:04:38 GMT  
		Size: 301.9 KB (301943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a461efe19445d4fbf86f22f4200fca0fae914794b523e6ced787d00cc486dd56`  
		Last Modified: Sat, 17 Feb 2018 09:04:42 GMT  
		Size: 27.5 MB (27546496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4934d9e86d34b76fbbf32be4306b716cef37e2e78282cd7fa68ccacad40f408`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc633c48dbbfc8a1d2abd072a6c948e80b363b02078531891ae5582880d72d1`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6234505c6155d628e1344737421f336b68597954c633c5cf2d6396bb3730b3`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533cc75ebe8e661b4a843f34ffe8811e582c2d53f55d5332dcd3efb8add8ca25`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.59`

```console
$ docker pull mysql@sha256:0e7ffb9184df8f09d2c64e8bad7eecb0f7f33902e5c1f3cff573c0c8d7253661
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.59` - linux; amd64

```console
$ docker pull mysql@sha256:08ecc7364e2924f5021694cce15bea8ce589288cdf5e830de4cfd55e98187edf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **90.2 MB (90206819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06806d6423e2f1f1c23ed1b81fb4631b2d455ba743677730bea71b63196979a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:51:53 GMT
RUN apt-get update && apt-get install -y perl --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:52:06 GMT
RUN apt-get update && apt-get install -y libaio1 pwgen && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:52:13 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 17 Feb 2018 08:52:14 GMT
ENV MYSQL_VERSION=5.5.59
# Sat, 17 Feb 2018 08:53:13 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -r "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 17 Feb 2018 08:59:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 17 Feb 2018 08:59:27 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 17 Feb 2018 08:59:28 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 17 Feb 2018 08:59:28 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:59:40 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:59:41 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:59:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:59:42 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:59:42 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e3d53e610e420ee6ecbf8d86889052b3d0a35e0a29c9312e8b8cfcb8ad8608`  
		Last Modified: Sat, 17 Feb 2018 09:04:43 GMT  
		Size: 8.4 MB (8441624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e34b5e69a0970253e8c4d03eeb2b0b4b339b594bcfe4e94eba14c10026be5f40`  
		Last Modified: Sat, 17 Feb 2018 09:04:38 GMT  
		Size: 301.9 KB (301943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a461efe19445d4fbf86f22f4200fca0fae914794b523e6ced787d00cc486dd56`  
		Last Modified: Sat, 17 Feb 2018 09:04:42 GMT  
		Size: 27.5 MB (27546496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4934d9e86d34b76fbbf32be4306b716cef37e2e78282cd7fa68ccacad40f408`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fc633c48dbbfc8a1d2abd072a6c948e80b363b02078531891ae5582880d72d1`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e6234505c6155d628e1344737421f336b68597954c633c5cf2d6396bb3730b3`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 2.7 KB (2691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:533cc75ebe8e661b4a843f34ffe8811e582c2d53f55d5332dcd3efb8add8ca25`  
		Last Modified: Sat, 17 Feb 2018 09:04:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:7edd891d3a88b8c4ecaec174514d77dd152ec63d39199020eddf8023eb1432f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:8f19c442dc2d7fb7ea08513abc8eb1915053cbc1e659e8197c24e7fecdb82fd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105065170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba30fe3cdd48d51c53cfeb2d738184c305234c097d92cd5d07ccdaf351552fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:49:31 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:49:43 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:49:43 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 17 Feb 2018 08:49:43 GMT
ENV MYSQL_VERSION=5.6.39-1debian8
# Sat, 17 Feb 2018 08:49:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:50:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:50:04 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:50:04 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:50:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:50:06 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:50:06 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4146cb804c3366ba733a9643bcbe8e62d0ca358ce40cc1aeb7357f1072864f`  
		Last Modified: Sat, 17 Feb 2018 09:03:39 GMT  
		Size: 8.5 MB (8460693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de5ccbd771ac6085b18dcd2d4322f8a792b00b6bc18b18e11091f4413a15b4f`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775e0cecdad2cb6fa2559a2d3015ce369d396c3a38bfa5935ac2bd86912a86a9`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4255f1a7ba015255f09c7609edee762fcc4f35bc1e305fc695ee1078df1d1`  
		Last Modified: Sat, 17 Feb 2018 09:03:43 GMT  
		Size: 42.7 MB (42667211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b4737edd2f417c56d06cc30a6b7214a6c36f02a06c0ebb34742ca3143f9e2b`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d87f540bc85cef2b0ef2ea772c258db526a5549d4cbd0e686930e72d7931917`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.39`

```console
$ docker pull mysql@sha256:7edd891d3a88b8c4ecaec174514d77dd152ec63d39199020eddf8023eb1432f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.39` - linux; amd64

```console
$ docker pull mysql@sha256:8f19c442dc2d7fb7ea08513abc8eb1915053cbc1e659e8197c24e7fecdb82fd7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105065170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cba30fe3cdd48d51c53cfeb2d738184c305234c097d92cd5d07ccdaf351552fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:49:31 GMT
RUN apt-get update && apt-get install -y perl pwgen --no-install-recommends && rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:49:43 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:49:43 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 17 Feb 2018 08:49:43 GMT
ENV MYSQL_VERSION=5.6.39-1debian8
# Sat, 17 Feb 2018 08:49:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:50:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:50:04 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:50:04 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:50:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:50:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:50:06 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:50:06 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc4146cb804c3366ba733a9643bcbe8e62d0ca358ce40cc1aeb7357f1072864f`  
		Last Modified: Sat, 17 Feb 2018 09:03:39 GMT  
		Size: 8.5 MB (8460693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7de5ccbd771ac6085b18dcd2d4322f8a792b00b6bc18b18e11091f4413a15b4f`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775e0cecdad2cb6fa2559a2d3015ce369d396c3a38bfa5935ac2bd86912a86a9`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 219.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88d4255f1a7ba015255f09c7609edee762fcc4f35bc1e305fc695ee1078df1d1`  
		Last Modified: Sat, 17 Feb 2018 09:03:43 GMT  
		Size: 42.7 MB (42667211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1b4737edd2f417c56d06cc30a6b7214a6c36f02a06c0ebb34742ca3143f9e2b`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 2.7 KB (2661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d87f540bc85cef2b0ef2ea772c258db526a5549d4cbd0e686930e72d7931917`  
		Last Modified: Sat, 17 Feb 2018 09:03:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:4f9323cb4aeca062fd1a341b50c7721b9aef6bff3ded806dec0897323b8b7be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:583f324dba8a7f603b7621595f2287a3ab4044cc06d0a1d86d513f4f72346558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144386985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f3956a9dd825e3195f0d1a4fe17cc94b0f6934fc470b09abf8fad87d17ff24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:40:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:40:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_VERSION=5.7.21-1debian8
# Sat, 17 Feb 2018 08:48:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:48:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:48:52 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:48:53 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:49:07 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:49:07 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6a6ff8ae838b11d953dec6600f56726ca0e38f0b880a35032f008adf61bfb`  
		Last Modified: Sat, 17 Feb 2018 09:00:35 GMT  
		Size: 10.7 MB (10711132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af71dde5fa231b5d633cbbf558b6c2d4c66ae4442f1b1175b1446ed744ecbe34`  
		Last Modified: Sat, 17 Feb 2018 09:00:28 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546980014e44691c27f14014bc9d01a0f58ab0447b3725b57c4ca48466154cf`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525a4f1d664f73519bb3161a5d0c4550ae85a3a0e0d072ed56a54ac25d92bb3`  
		Last Modified: Sat, 17 Feb 2018 09:02:04 GMT  
		Size: 79.7 MB (79738505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af610cdb41735006aa5b49f2c0e97fbbdade11c3b969d1f5ffdba65f91530262`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 2.7 KB (2738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe36edc2517a739e6a1f3d193a5681bcf141faef5319edf2ad23e80110191a69`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.21`

```console
$ docker pull mysql@sha256:4f9323cb4aeca062fd1a341b50c7721b9aef6bff3ded806dec0897323b8b7be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.21` - linux; amd64

```console
$ docker pull mysql@sha256:583f324dba8a7f603b7621595f2287a3ab4044cc06d0a1d86d513f4f72346558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144386985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f3956a9dd825e3195f0d1a4fe17cc94b0f6934fc470b09abf8fad87d17ff24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:40:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:40:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_VERSION=5.7.21-1debian8
# Sat, 17 Feb 2018 08:48:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:48:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:48:52 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:48:53 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:49:07 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:49:07 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6a6ff8ae838b11d953dec6600f56726ca0e38f0b880a35032f008adf61bfb`  
		Last Modified: Sat, 17 Feb 2018 09:00:35 GMT  
		Size: 10.7 MB (10711132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af71dde5fa231b5d633cbbf558b6c2d4c66ae4442f1b1175b1446ed744ecbe34`  
		Last Modified: Sat, 17 Feb 2018 09:00:28 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546980014e44691c27f14014bc9d01a0f58ab0447b3725b57c4ca48466154cf`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525a4f1d664f73519bb3161a5d0c4550ae85a3a0e0d072ed56a54ac25d92bb3`  
		Last Modified: Sat, 17 Feb 2018 09:02:04 GMT  
		Size: 79.7 MB (79738505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af610cdb41735006aa5b49f2c0e97fbbdade11c3b969d1f5ffdba65f91530262`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 2.7 KB (2738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe36edc2517a739e6a1f3d193a5681bcf141faef5319edf2ad23e80110191a69`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:21684204cc276a1441a19332157a98f0c3ec241647586cc97ea3b795af96340a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:f395dc930d73ea61a8313179e7b32321f14335c46adf3ecc9cab1188d74da5fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0866cfd5ddefb6a0ffa59cd591b84cbc0bca49e4d7c4361d0f0190600c191ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sun, 18 Feb 2018 02:31:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sun, 18 Feb 2018 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:31:39 GMT
ENV GOSU_VERSION=1.7
# Sun, 18 Feb 2018 04:53:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 04:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 04:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:09 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Feb 2018 16:47:27 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 21 Feb 2018 16:47:28 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Wed, 21 Feb 2018 16:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 16:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 16:47:31 GMT
EXPOSE 3306/tcp
# Wed, 21 Feb 2018 16:47:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e372a8ec9067cb29ec4d80bd48dbee77848d1a394f8ba2c24cf28215480dd7`  
		Last Modified: Wed, 21 Feb 2018 17:02:51 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b869561d3ad4f87fd5d9f2341f31014073e296ffb82cfecaed9a691afa15e4`  
		Last Modified: Wed, 21 Feb 2018 17:02:52 GMT  
		Size: 4.5 MB (4498378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc53892a8773c5a04fa267ed3e694f5ada0a39b1a9d08c2e02b40ac28f9af5`  
		Last Modified: Wed, 21 Feb 2018 17:02:50 GMT  
		Size: 1.3 MB (1270364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19b42158fbcbad1534661a370e91f0f01618f11ff7cb7441b1aa4bc0d39a14b`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7ed73de688475bd904f29ab5385034dc34e70326752e364f88634855209bd`  
		Last Modified: Wed, 21 Feb 2018 17:02:54 GMT  
		Size: 12.1 MB (12089588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090d3da2216b2812f79b2048c6f50dcbd6747e64a87d3e319db50eb33222fe6`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 21.0 KB (21027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b30ff71e8f0e6c57d9077e340e1bf917d08395735fd1a9bc8ed31ed1d20826c`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a11f5bf4d68ae6d64538461497c113a5508975613dcec0e67c12c194abb4fc0`  
		Last Modified: Wed, 21 Feb 2018 17:02:57 GMT  
		Size: 47.1 MB (47085774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3351ab61c8b4d7cd1d9c5afefb31513f01358e499a85c9482e8ddd8a9672f6`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70712ba6080ee01dd20fb33f650b9c39977eda52d1c3ae6bfc6971317b4c7a3`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 2.7 KB (2735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655090018f96bba7997dc425e70c839cddc38189f8c30bf41ab3a2777a843584`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:21684204cc276a1441a19332157a98f0c3ec241647586cc97ea3b795af96340a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:f395dc930d73ea61a8313179e7b32321f14335c46adf3ecc9cab1188d74da5fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0866cfd5ddefb6a0ffa59cd591b84cbc0bca49e4d7c4361d0f0190600c191ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sun, 18 Feb 2018 02:31:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sun, 18 Feb 2018 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:31:39 GMT
ENV GOSU_VERSION=1.7
# Sun, 18 Feb 2018 04:53:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 04:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 04:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:09 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Feb 2018 16:47:27 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 21 Feb 2018 16:47:28 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Wed, 21 Feb 2018 16:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 16:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 16:47:31 GMT
EXPOSE 3306/tcp
# Wed, 21 Feb 2018 16:47:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e372a8ec9067cb29ec4d80bd48dbee77848d1a394f8ba2c24cf28215480dd7`  
		Last Modified: Wed, 21 Feb 2018 17:02:51 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b869561d3ad4f87fd5d9f2341f31014073e296ffb82cfecaed9a691afa15e4`  
		Last Modified: Wed, 21 Feb 2018 17:02:52 GMT  
		Size: 4.5 MB (4498378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc53892a8773c5a04fa267ed3e694f5ada0a39b1a9d08c2e02b40ac28f9af5`  
		Last Modified: Wed, 21 Feb 2018 17:02:50 GMT  
		Size: 1.3 MB (1270364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19b42158fbcbad1534661a370e91f0f01618f11ff7cb7441b1aa4bc0d39a14b`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7ed73de688475bd904f29ab5385034dc34e70326752e364f88634855209bd`  
		Last Modified: Wed, 21 Feb 2018 17:02:54 GMT  
		Size: 12.1 MB (12089588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090d3da2216b2812f79b2048c6f50dcbd6747e64a87d3e319db50eb33222fe6`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 21.0 KB (21027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b30ff71e8f0e6c57d9077e340e1bf917d08395735fd1a9bc8ed31ed1d20826c`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a11f5bf4d68ae6d64538461497c113a5508975613dcec0e67c12c194abb4fc0`  
		Last Modified: Wed, 21 Feb 2018 17:02:57 GMT  
		Size: 47.1 MB (47085774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3351ab61c8b4d7cd1d9c5afefb31513f01358e499a85c9482e8ddd8a9672f6`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70712ba6080ee01dd20fb33f650b9c39977eda52d1c3ae6bfc6971317b4c7a3`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 2.7 KB (2735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655090018f96bba7997dc425e70c839cddc38189f8c30bf41ab3a2777a843584`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.4`

```console
$ docker pull mysql@sha256:21684204cc276a1441a19332157a98f0c3ec241647586cc97ea3b795af96340a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.4` - linux; amd64

```console
$ docker pull mysql@sha256:f395dc930d73ea61a8313179e7b32321f14335c46adf3ecc9cab1188d74da5fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0866cfd5ddefb6a0ffa59cd591b84cbc0bca49e4d7c4361d0f0190600c191ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sun, 18 Feb 2018 02:31:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sun, 18 Feb 2018 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:31:39 GMT
ENV GOSU_VERSION=1.7
# Sun, 18 Feb 2018 04:53:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 04:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 04:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:09 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Feb 2018 16:47:27 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 21 Feb 2018 16:47:28 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Wed, 21 Feb 2018 16:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 16:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 16:47:31 GMT
EXPOSE 3306/tcp
# Wed, 21 Feb 2018 16:47:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e372a8ec9067cb29ec4d80bd48dbee77848d1a394f8ba2c24cf28215480dd7`  
		Last Modified: Wed, 21 Feb 2018 17:02:51 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b869561d3ad4f87fd5d9f2341f31014073e296ffb82cfecaed9a691afa15e4`  
		Last Modified: Wed, 21 Feb 2018 17:02:52 GMT  
		Size: 4.5 MB (4498378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc53892a8773c5a04fa267ed3e694f5ada0a39b1a9d08c2e02b40ac28f9af5`  
		Last Modified: Wed, 21 Feb 2018 17:02:50 GMT  
		Size: 1.3 MB (1270364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19b42158fbcbad1534661a370e91f0f01618f11ff7cb7441b1aa4bc0d39a14b`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7ed73de688475bd904f29ab5385034dc34e70326752e364f88634855209bd`  
		Last Modified: Wed, 21 Feb 2018 17:02:54 GMT  
		Size: 12.1 MB (12089588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090d3da2216b2812f79b2048c6f50dcbd6747e64a87d3e319db50eb33222fe6`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 21.0 KB (21027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b30ff71e8f0e6c57d9077e340e1bf917d08395735fd1a9bc8ed31ed1d20826c`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a11f5bf4d68ae6d64538461497c113a5508975613dcec0e67c12c194abb4fc0`  
		Last Modified: Wed, 21 Feb 2018 17:02:57 GMT  
		Size: 47.1 MB (47085774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3351ab61c8b4d7cd1d9c5afefb31513f01358e499a85c9482e8ddd8a9672f6`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70712ba6080ee01dd20fb33f650b9c39977eda52d1c3ae6bfc6971317b4c7a3`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 2.7 KB (2735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655090018f96bba7997dc425e70c839cddc38189f8c30bf41ab3a2777a843584`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.4-rc`

```console
$ docker pull mysql@sha256:21684204cc276a1441a19332157a98f0c3ec241647586cc97ea3b795af96340a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.4-rc` - linux; amd64

```console
$ docker pull mysql@sha256:f395dc930d73ea61a8313179e7b32321f14335c46adf3ecc9cab1188d74da5fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0866cfd5ddefb6a0ffa59cd591b84cbc0bca49e4d7c4361d0f0190600c191ae8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 02:01:56 GMT
ADD file:27ffb1ef53bfa3b9f26c0ad9d788ae2340b46470f958f451ddd80e122d94d100 in / 
# Thu, 15 Feb 2018 02:01:56 GMT
CMD ["bash"]
# Sun, 18 Feb 2018 02:31:31 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sun, 18 Feb 2018 02:31:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sun, 18 Feb 2018 02:31:39 GMT
ENV GOSU_VERSION=1.7
# Sun, 18 Feb 2018 04:53:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sun, 18 Feb 2018 04:53:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sun, 18 Feb 2018 04:53:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:09 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:27 GMT
VOLUME [/var/lib/mysql]
# Wed, 21 Feb 2018 16:47:27 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 21 Feb 2018 16:47:28 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Wed, 21 Feb 2018 16:47:30 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 21 Feb 2018 16:47:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 21 Feb 2018 16:47:31 GMT
EXPOSE 3306/tcp
# Wed, 21 Feb 2018 16:47:31 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:8176e34d5d92775e15a602541e02fec25a22933a12561c114436b757b8e7a9e8`  
		Last Modified: Thu, 15 Feb 2018 02:27:50 GMT  
		Size: 22.5 MB (22496767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e372a8ec9067cb29ec4d80bd48dbee77848d1a394f8ba2c24cf28215480dd7`  
		Last Modified: Wed, 21 Feb 2018 17:02:51 GMT  
		Size: 1.8 KB (1750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b869561d3ad4f87fd5d9f2341f31014073e296ffb82cfecaed9a691afa15e4`  
		Last Modified: Wed, 21 Feb 2018 17:02:52 GMT  
		Size: 4.5 MB (4498378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddc53892a8773c5a04fa267ed3e694f5ada0a39b1a9d08c2e02b40ac28f9af5`  
		Last Modified: Wed, 21 Feb 2018 17:02:50 GMT  
		Size: 1.3 MB (1270364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a19b42158fbcbad1534661a370e91f0f01618f11ff7cb7441b1aa4bc0d39a14b`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31b7ed73de688475bd904f29ab5385034dc34e70326752e364f88634855209bd`  
		Last Modified: Wed, 21 Feb 2018 17:02:54 GMT  
		Size: 12.1 MB (12089588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e090d3da2216b2812f79b2048c6f50dcbd6747e64a87d3e319db50eb33222fe6`  
		Last Modified: Wed, 21 Feb 2018 17:02:49 GMT  
		Size: 21.0 KB (21027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b30ff71e8f0e6c57d9077e340e1bf917d08395735fd1a9bc8ed31ed1d20826c`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a11f5bf4d68ae6d64538461497c113a5508975613dcec0e67c12c194abb4fc0`  
		Last Modified: Wed, 21 Feb 2018 17:02:57 GMT  
		Size: 47.1 MB (47085774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f3351ab61c8b4d7cd1d9c5afefb31513f01358e499a85c9482e8ddd8a9672f6`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c70712ba6080ee01dd20fb33f650b9c39977eda52d1c3ae6bfc6971317b4c7a3`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 2.7 KB (2735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:655090018f96bba7997dc425e70c839cddc38189f8c30bf41ab3a2777a843584`  
		Last Modified: Wed, 21 Feb 2018 17:02:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:4f9323cb4aeca062fd1a341b50c7721b9aef6bff3ded806dec0897323b8b7be8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:583f324dba8a7f603b7621595f2287a3ab4044cc06d0a1d86d513f4f72346558
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **144.4 MB (144386985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f3956a9dd825e3195f0d1a4fe17cc94b0f6934fc470b09abf8fad87d17ff24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 06:37:39 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 17 Feb 2018 06:37:40 GMT
ENV GOSU_VERSION=1.7
# Sat, 17 Feb 2018 06:38:04 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 17 Feb 2018 06:38:06 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 17 Feb 2018 08:40:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 08:40:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 17 Feb 2018 08:48:27 GMT
ENV MYSQL_VERSION=5.7.21-1debian8
# Sat, 17 Feb 2018 08:48:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ jessie mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 17 Feb 2018 08:48:52 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 17 Feb 2018 08:48:52 GMT
VOLUME [/var/lib/mysql]
# Sat, 17 Feb 2018 08:48:53 GMT
COPY file:52f06a5715711e8cca267af294ae8a41bd51b2c2ba4c9dd66ee8f53c6fc96dae in /usr/local/bin/ 
# Sat, 17 Feb 2018 08:49:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 17 Feb 2018 08:49:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Feb 2018 08:49:07 GMT
EXPOSE 3306/tcp
# Sat, 17 Feb 2018 08:49:07 GMT
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
	-	`sha256:ffadeffb3eb40dbe3283f23b0b16ec41818177f4407d9892508f288cfc0469e3`  
		Last Modified: Sat, 17 Feb 2018 06:55:39 GMT  
		Size: 1.3 MB (1303039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c2c640eac6bb82eb713abc6969fbbc3d2305696024d1842e4c058025f2983e6`  
		Last Modified: Sat, 17 Feb 2018 06:55:36 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cec6a6ff8ae838b11d953dec6600f56726ca0e38f0b880a35032f008adf61bfb`  
		Last Modified: Sat, 17 Feb 2018 09:00:35 GMT  
		Size: 10.7 MB (10711132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af71dde5fa231b5d633cbbf558b6c2d4c66ae4442f1b1175b1446ed744ecbe34`  
		Last Modified: Sat, 17 Feb 2018 09:00:28 GMT  
		Size: 20.7 KB (20736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2546980014e44691c27f14014bc9d01a0f58ab0447b3725b57c4ca48466154cf`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a525a4f1d664f73519bb3161a5d0c4550ae85a3a0e0d072ed56a54ac25d92bb3`  
		Last Modified: Sat, 17 Feb 2018 09:02:04 GMT  
		Size: 79.7 MB (79738505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af610cdb41735006aa5b49f2c0e97fbbdade11c3b969d1f5ffdba65f91530262`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 2.7 KB (2738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe36edc2517a739e6a1f3d193a5681bcf141faef5319edf2ad23e80110191a69`  
		Last Modified: Sat, 17 Feb 2018 09:01:47 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
