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
$ docker pull mysql@sha256:1203dfba2600f140b74e375a354b1b801fa1b32d6f80fdee5f155d1e9f38c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:f568db3bdc3226cc28e4b148e6b9fd4e68d9c42e97a82be671bbe9eeb37ab1d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123847216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bc0f66b7af6ba3ea96582685d3afcd6dff93c2f8999da0ffadd67b280db548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:03:03 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 26 Jun 2018 23:03:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:03:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:03:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:03:33 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:03:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:03:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:03:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f9c61f40bfe8a9b0bf1195ba1ea56fa0768aec0564def3b27431e979382cf4`  
		Last Modified: Tue, 26 Jun 2018 23:07:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b252a90a12371e016b860e205611d66ed65bc0a21b06fd2e5e8841786f1920`  
		Last Modified: Tue, 26 Jun 2018 23:07:51 GMT  
		Size: 83.5 MB (83462574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f92ebb7da5511661cabe08b0a34e8eea5f223f26948af6aa904e236eb7fa465`  
		Last Modified: Tue, 26 Jun 2018 23:07:23 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90303981d2767b76a3d019764dbaa4f7006868073a0bb6fe4a338fa3c3afaee8`  
		Last Modified: Tue, 26 Jun 2018 23:07:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:10cd23e9eb3993dd4a6dcdca51594954fa0d8480b2b410ba058116ddc03565d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:96c4891fe61c3f2468f45133576c98e8522dc19b51fd48cb1160a61ad5293a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66061055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfff6acec30ab734700316941febad15ad41376d0956eda1dbf589e31b61ac1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:04:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:04:38 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 26 Jun 2018 23:04:38 GMT
ENV MYSQL_VERSION=5.5.60
# Tue, 26 Jun 2018 23:05:37 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 26 Jun 2018 23:05:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 26 Jun 2018 23:05:42 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 26 Jun 2018 23:05:43 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:05:43 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:05:44 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:05:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:05:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:05:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:05:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a330367b615ea436a2a2541d81f43d88e0f0a30935c4e204d03d7eb08642cb`  
		Last Modified: Tue, 26 Jun 2018 23:09:17 GMT  
		Size: 10.3 MB (10292119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7af037fadc3e3dee838d5de28c1576637c35619fc49de7a037823ecb70ce5f`  
		Last Modified: Tue, 26 Jun 2018 23:09:18 GMT  
		Size: 27.5 MB (27497627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50efc461ce0ae9aa09e81d8dba5853c6eb9d6a027eeb9dd4c0e3b3fc6c86ef92`  
		Last Modified: Tue, 26 Jun 2018 23:09:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564308da3566f8a18b8017a4208645a2b39f09beafbf9cdf69c40ac514e037b4`  
		Last Modified: Tue, 26 Jun 2018 23:09:10 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf0b624a3eff554332a00a6a9b80abf42115842b2387db231d4b4306c4405d`  
		Last Modified: Tue, 26 Jun 2018 23:09:09 GMT  
		Size: 2.9 KB (2874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3525f46cffc79db9f4699f40828194ec7f9316f48b66849803954e7878c613d4`  
		Last Modified: Tue, 26 Jun 2018 23:09:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:10cd23e9eb3993dd4a6dcdca51594954fa0d8480b2b410ba058116ddc03565d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:96c4891fe61c3f2468f45133576c98e8522dc19b51fd48cb1160a61ad5293a4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66061055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acfff6acec30ab734700316941febad15ad41376d0956eda1dbf589e31b61ac1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:04:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:04:38 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 26 Jun 2018 23:04:38 GMT
ENV MYSQL_VERSION=5.5.60
# Tue, 26 Jun 2018 23:05:37 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 26 Jun 2018 23:05:41 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 26 Jun 2018 23:05:42 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 26 Jun 2018 23:05:43 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:05:43 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:05:44 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:05:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:05:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:05:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:05:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a330367b615ea436a2a2541d81f43d88e0f0a30935c4e204d03d7eb08642cb`  
		Last Modified: Tue, 26 Jun 2018 23:09:17 GMT  
		Size: 10.3 MB (10292119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a7af037fadc3e3dee838d5de28c1576637c35619fc49de7a037823ecb70ce5f`  
		Last Modified: Tue, 26 Jun 2018 23:09:18 GMT  
		Size: 27.5 MB (27497627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50efc461ce0ae9aa09e81d8dba5853c6eb9d6a027eeb9dd4c0e3b3fc6c86ef92`  
		Last Modified: Tue, 26 Jun 2018 23:09:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:564308da3566f8a18b8017a4208645a2b39f09beafbf9cdf69c40ac514e037b4`  
		Last Modified: Tue, 26 Jun 2018 23:09:10 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bf0b624a3eff554332a00a6a9b80abf42115842b2387db231d4b4306c4405d`  
		Last Modified: Tue, 26 Jun 2018 23:09:09 GMT  
		Size: 2.9 KB (2874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3525f46cffc79db9f4699f40828194ec7f9316f48b66849803954e7878c613d4`  
		Last Modified: Tue, 26 Jun 2018 23:09:12 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:0267b9b43034ed630e94f846ca825140994166c6c7d39d43d4dbe8d1404e1129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:883297d48d34eb61433b1ae6390ad2d8f87d72d73ddb9ec7714fcd129e5f0beb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82669778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fdbdd65c6aa3df941925dad239bce330bfcaa9af753239e3807ce1bb0ab3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:03:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:03:54 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 26 Jun 2018 23:03:55 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Tue, 26 Jun 2018 23:03:55 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:04:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:04:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:04:18 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:04:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:04:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:04:19 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:04:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c332b2a4ecf0c412e5e7567f413ebd656a270a075f4795a7f5b4c6205ecb3df0`  
		Last Modified: Tue, 26 Jun 2018 23:08:37 GMT  
		Size: 10.2 MB (10169065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2031bd1157f4ca4a5831dd97358326c9c5911c15d312eb1fed2c1b493322aeda`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57e5c3f9d3ed19ec481222fecb4207f60957a5cd089d87e1975c3447eb1391`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83821c90c8262235606560d3bacfeb89544cbd769ee3a33d6a664341b3a0d171`  
		Last Modified: Tue, 26 Jun 2018 23:08:45 GMT  
		Size: 44.2 MB (44207292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe23be22c90f6bbf5a3e92baadf87a4a192084a5e85a2890c52fd1964894dcf`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b2e7de4325cb996e8d3e0887d9a665fbbf2cf1fcc13e3d4081af287a4af602`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:0267b9b43034ed630e94f846ca825140994166c6c7d39d43d4dbe8d1404e1129
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:883297d48d34eb61433b1ae6390ad2d8f87d72d73ddb9ec7714fcd129e5f0beb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82669778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97fdbdd65c6aa3df941925dad239bce330bfcaa9af753239e3807ce1bb0ab3cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:03:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:03:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:03:54 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 26 Jun 2018 23:03:55 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Tue, 26 Jun 2018 23:03:55 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:04:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:04:18 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:04:18 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:04:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:04:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:04:19 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:04:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c332b2a4ecf0c412e5e7567f413ebd656a270a075f4795a7f5b4c6205ecb3df0`  
		Last Modified: Tue, 26 Jun 2018 23:08:37 GMT  
		Size: 10.2 MB (10169065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2031bd1157f4ca4a5831dd97358326c9c5911c15d312eb1fed2c1b493322aeda`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 22.3 KB (22330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a57e5c3f9d3ed19ec481222fecb4207f60957a5cd089d87e1975c3447eb1391`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83821c90c8262235606560d3bacfeb89544cbd769ee3a33d6a664341b3a0d171`  
		Last Modified: Tue, 26 Jun 2018 23:08:45 GMT  
		Size: 44.2 MB (44207292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe23be22c90f6bbf5a3e92baadf87a4a192084a5e85a2890c52fd1964894dcf`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5b2e7de4325cb996e8d3e0887d9a665fbbf2cf1fcc13e3d4081af287a4af602`  
		Last Modified: Tue, 26 Jun 2018 23:08:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:1203dfba2600f140b74e375a354b1b801fa1b32d6f80fdee5f155d1e9f38c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:f568db3bdc3226cc28e4b148e6b9fd4e68d9c42e97a82be671bbe9eeb37ab1d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123847216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bc0f66b7af6ba3ea96582685d3afcd6dff93c2f8999da0ffadd67b280db548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:03:03 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 26 Jun 2018 23:03:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:03:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:03:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:03:33 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:03:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:03:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:03:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f9c61f40bfe8a9b0bf1195ba1ea56fa0768aec0564def3b27431e979382cf4`  
		Last Modified: Tue, 26 Jun 2018 23:07:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b252a90a12371e016b860e205611d66ed65bc0a21b06fd2e5e8841786f1920`  
		Last Modified: Tue, 26 Jun 2018 23:07:51 GMT  
		Size: 83.5 MB (83462574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f92ebb7da5511661cabe08b0a34e8eea5f223f26948af6aa904e236eb7fa465`  
		Last Modified: Tue, 26 Jun 2018 23:07:23 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90303981d2767b76a3d019764dbaa4f7006868073a0bb6fe4a338fa3c3afaee8`  
		Last Modified: Tue, 26 Jun 2018 23:07:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:1203dfba2600f140b74e375a354b1b801fa1b32d6f80fdee5f155d1e9f38c841
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:f568db3bdc3226cc28e4b148e6b9fd4e68d9c42e97a82be671bbe9eeb37ab1d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123847216 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66bc0f66b7af6ba3ea96582685d3afcd6dff93c2f8999da0ffadd67b280db548`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:03:03 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 26 Jun 2018 23:03:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 26 Jun 2018 23:03:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:03:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 26 Jun 2018 23:03:32 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:03:33 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:03:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:03:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:03:34 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:03:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f9c61f40bfe8a9b0bf1195ba1ea56fa0768aec0564def3b27431e979382cf4`  
		Last Modified: Tue, 26 Jun 2018 23:07:22 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b252a90a12371e016b860e205611d66ed65bc0a21b06fd2e5e8841786f1920`  
		Last Modified: Tue, 26 Jun 2018 23:07:51 GMT  
		Size: 83.5 MB (83462574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f92ebb7da5511661cabe08b0a34e8eea5f223f26948af6aa904e236eb7fa465`  
		Last Modified: Tue, 26 Jun 2018 23:07:23 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90303981d2767b76a3d019764dbaa4f7006868073a0bb6fe4a338fa3c3afaee8`  
		Last Modified: Tue, 26 Jun 2018 23:07:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:43ed4f8c9d1695e97a39cdfe9475af9096e3723cfb79d820d8da00d61a277a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:db516d2cfe880c30e695f4f6f741818cba383db0751727946ffd3ae3cc5533d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127040217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99edb9fd40491fd5ff43c778f223d31b5604d548eb92912017ab48ac156832`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 26 Jun 2018 23:02:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:02:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:02:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:02:44 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 26 Jun 2018 23:02:44 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:02:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:02:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0cb05a8fc36e389e4331494e8e034fcad64ea44fa5a1d67a72491cd70ae890`  
		Last Modified: Tue, 26 Jun 2018 23:06:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e3e373fca5514c288483a2bbfa9dbe8ee062ef5c83a2626774a8749e47071`  
		Last Modified: Tue, 26 Jun 2018 23:06:39 GMT  
		Size: 86.7 MB (86654603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa39a2c9922d753e7105bb99a5b92c58dcb34a76bb1160e7aad3df5992c86f24`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b293d9c897c47aaa9c6a6488c1fe4cbb345b987f1fc9ffeb78d3e0adb95f6604`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc061869740e3227a74ae05058aed2f7d9f55f846d6cd7920093d4679746a69`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:43ed4f8c9d1695e97a39cdfe9475af9096e3723cfb79d820d8da00d61a277a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:db516d2cfe880c30e695f4f6f741818cba383db0751727946ffd3ae3cc5533d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127040217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99edb9fd40491fd5ff43c778f223d31b5604d548eb92912017ab48ac156832`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 26 Jun 2018 23:02:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:02:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:02:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:02:44 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 26 Jun 2018 23:02:44 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:02:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:02:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0cb05a8fc36e389e4331494e8e034fcad64ea44fa5a1d67a72491cd70ae890`  
		Last Modified: Tue, 26 Jun 2018 23:06:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e3e373fca5514c288483a2bbfa9dbe8ee062ef5c83a2626774a8749e47071`  
		Last Modified: Tue, 26 Jun 2018 23:06:39 GMT  
		Size: 86.7 MB (86654603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa39a2c9922d753e7105bb99a5b92c58dcb34a76bb1160e7aad3df5992c86f24`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b293d9c897c47aaa9c6a6488c1fe4cbb345b987f1fc9ffeb78d3e0adb95f6604`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc061869740e3227a74ae05058aed2f7d9f55f846d6cd7920093d4679746a69`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:43ed4f8c9d1695e97a39cdfe9475af9096e3723cfb79d820d8da00d61a277a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:db516d2cfe880c30e695f4f6f741818cba383db0751727946ffd3ae3cc5533d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127040217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99edb9fd40491fd5ff43c778f223d31b5604d548eb92912017ab48ac156832`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 26 Jun 2018 23:02:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:02:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:02:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:02:44 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 26 Jun 2018 23:02:44 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:02:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:02:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0cb05a8fc36e389e4331494e8e034fcad64ea44fa5a1d67a72491cd70ae890`  
		Last Modified: Tue, 26 Jun 2018 23:06:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e3e373fca5514c288483a2bbfa9dbe8ee062ef5c83a2626774a8749e47071`  
		Last Modified: Tue, 26 Jun 2018 23:06:39 GMT  
		Size: 86.7 MB (86654603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa39a2c9922d753e7105bb99a5b92c58dcb34a76bb1160e7aad3df5992c86f24`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b293d9c897c47aaa9c6a6488c1fe4cbb345b987f1fc9ffeb78d3e0adb95f6604`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc061869740e3227a74ae05058aed2f7d9f55f846d6cd7920093d4679746a69`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:43ed4f8c9d1695e97a39cdfe9475af9096e3723cfb79d820d8da00d61a277a85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:db516d2cfe880c30e695f4f6f741818cba383db0751727946ffd3ae3cc5533d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127040217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d99edb9fd40491fd5ff43c778f223d31b5604d548eb92912017ab48ac156832`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:25:25 GMT
ADD file:28fbc9fd012eef72780d1c75fc2b0969d13f0138f735035335ab4b76793da2da in / 
# Tue, 26 Jun 2018 21:25:25 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 23:01:35 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 23:01:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:01:46 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Jun 2018 23:02:06 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Jun 2018 23:02:07 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 23:02:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 23:02:19 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 26 Jun 2018 23:02:20 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 26 Jun 2018 23:02:21 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Jun 2018 23:02:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Jun 2018 23:02:44 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Jun 2018 23:02:44 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 26 Jun 2018 23:02:44 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 26 Jun 2018 23:02:45 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Jun 2018 23:02:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Jun 2018 23:02:46 GMT
EXPOSE 3306/tcp
# Tue, 26 Jun 2018 23:02:46 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:683abbb4ea60e108164f1d351e7bcf13daf45941137d800086447874df05f48e`  
		Last Modified: Tue, 26 Jun 2018 21:37:45 GMT  
		Size: 22.5 MB (22496975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0550d17aeefaf608f887e92fa2ccb50b43e4f7b65d354d61c97217aa4a4cab80`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e26605ddd77b819dfb23d28e1992d8f435142b1b70c8aceed3e94de1c69ca46`  
		Last Modified: Tue, 26 Jun 2018 23:06:10 GMT  
		Size: 4.5 MB (4498578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9882737bd15fd5c289096db0652851ae9b0aba5ea95758b091fb35dc3544b151`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 1.3 MB (1270486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999c06ab75f6240facacea7f7bef87355c1b3b0b2c99df58c165d30a9703f57e`  
		Last Modified: Tue, 26 Jun 2018 23:06:06 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c71d695f9937f6f3880061b5e3d2963fc9ae02ea92e1cba8e168292940f79ba3`  
		Last Modified: Tue, 26 Jun 2018 23:06:12 GMT  
		Size: 12.1 MB (12091205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38f847c1491e59cd3757df5afcd9deadfef755eb5ec055707912a96dafcf79f`  
		Last Modified: Tue, 26 Jun 2018 23:06:07 GMT  
		Size: 22.3 KB (22327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0cb05a8fc36e389e4331494e8e034fcad64ea44fa5a1d67a72491cd70ae890`  
		Last Modified: Tue, 26 Jun 2018 23:06:03 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c89e3e373fca5514c288483a2bbfa9dbe8ee062ef5c83a2626774a8749e47071`  
		Last Modified: Tue, 26 Jun 2018 23:06:39 GMT  
		Size: 86.7 MB (86654603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa39a2c9922d753e7105bb99a5b92c58dcb34a76bb1160e7aad3df5992c86f24`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b293d9c897c47aaa9c6a6488c1fe4cbb345b987f1fc9ffeb78d3e0adb95f6604`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3dc061869740e3227a74ae05058aed2f7d9f55f846d6cd7920093d4679746a69`  
		Last Modified: Tue, 26 Jun 2018 23:06:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
