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
$ docker pull mysql@sha256:f030e84582d939d313fe2ef469b5c65ffd0f7dff3b4b98e6ec9ae2dccd83dcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:81679f23e0ece3e50a7300050191272e5afbf5b66be9b60d2ee0e8b575b152e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d16d0a97dd13a8ca0c0e205ce1f31f64d9d32048379eb322749442bff35f144`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:55:16 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 30 Apr 2018 05:55:17 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Mon, 30 Apr 2018 05:55:17 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:55:36 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 05:55:36 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:20 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:21 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1194add2f3fb0b05e440f3f2fa868e909df3bfc942d7a49ce0ca2efd8a5a00`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5c74178a0293459e3dd346bdf88ed27eca878d68b6befad3751970977e0470`  
		Last Modified: Mon, 30 Apr 2018 06:46:13 GMT  
		Size: 83.5 MB (83462473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9201d309436463a254bbca545b840438aaa56628838392a2497947b5850008e`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ac4524e8e2dfb396a5827aed812f25945d4058efb7491f09c85e45e783535`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7db8727bce27876ba68e8c4bb2d88a33cf4b276c3db8277cf50c034768abfe7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:b2160bd12cc78f45b74d36dff2707ce6f0be5142272617d2c8246c516c289753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66060200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13c4be36ec5661aeff6bbeafc2ddc292d9f19c28dc825b800d84974b0ceb67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 06:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 06:15:26 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 30 Apr 2018 06:15:26 GMT
ENV MYSQL_VERSION=5.5.60
# Mon, 30 Apr 2018 06:15:59 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 30 Apr 2018 06:15:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 30 Apr 2018 06:16:00 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 30 Apr 2018 06:16:01 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 06:16:01 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:31 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:32 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302f27b6dac594d7741c2327a3b933951881fe095c1787ea7aba6f5127c67dae`  
		Last Modified: Mon, 30 Apr 2018 07:13:12 GMT  
		Size: 10.3 MB (10292630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc891ef0eba50e2a0129bc138d884cd5ea6e18e846e23e369ded5a2e78aba171`  
		Last Modified: Mon, 30 Apr 2018 07:13:11 GMT  
		Size: 27.5 MB (27497419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8885e673ba61f69c47dbb07d52ec66218a6564c29305ba8f108dfdf527d5b61`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc2b2613ec040e41c1374c3ff6a0aaf60d8915ea9b9d719c4c65e116fbda642`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55d2213fe96f00c820a9f72fe699ec925cb6ce0733adb01645f5d436ce3c307`  
		Last Modified: Fri, 04 May 2018 23:42:34 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf0b766a7b0f51b3cef5f93cbab178a77f2802d39e635c851cd00f3b3dd63fb`  
		Last Modified: Fri, 04 May 2018 23:42:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:7db8727bce27876ba68e8c4bb2d88a33cf4b276c3db8277cf50c034768abfe7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:b2160bd12cc78f45b74d36dff2707ce6f0be5142272617d2c8246c516c289753
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66060200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f13c4be36ec5661aeff6bbeafc2ddc292d9f19c28dc825b800d84974b0ceb67d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 06:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 06:15:26 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 30 Apr 2018 06:15:26 GMT
ENV MYSQL_VERSION=5.5.60
# Mon, 30 Apr 2018 06:15:59 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 30 Apr 2018 06:15:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 30 Apr 2018 06:16:00 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 30 Apr 2018 06:16:01 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 06:16:01 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:31 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:32 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:33 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:302f27b6dac594d7741c2327a3b933951881fe095c1787ea7aba6f5127c67dae`  
		Last Modified: Mon, 30 Apr 2018 07:13:12 GMT  
		Size: 10.3 MB (10292630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc891ef0eba50e2a0129bc138d884cd5ea6e18e846e23e369ded5a2e78aba171`  
		Last Modified: Mon, 30 Apr 2018 07:13:11 GMT  
		Size: 27.5 MB (27497419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8885e673ba61f69c47dbb07d52ec66218a6564c29305ba8f108dfdf527d5b61`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc2b2613ec040e41c1374c3ff6a0aaf60d8915ea9b9d719c4c65e116fbda642`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a55d2213fe96f00c820a9f72fe699ec925cb6ce0733adb01645f5d436ce3c307`  
		Last Modified: Fri, 04 May 2018 23:42:34 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baf0b766a7b0f51b3cef5f93cbab178a77f2802d39e635c851cd00f3b3dd63fb`  
		Last Modified: Fri, 04 May 2018 23:42:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:7e3575b7949a4f8712a47b0fc875022dcea5d84f4672b1532587b6933502f757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:16eefe638c159c5e94d04d031cce5afae0bb873bb145f2343c36d26ff80ab275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5ccdc8aedc4183c2f79dde76d7412913762bf0f0070cd503488b8989e1ed23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:57:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:57:38 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:57:39 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 30 Apr 2018 05:57:39 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Mon, 30 Apr 2018 05:57:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:57:54 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 05:57:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:25 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:27 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd6ee094d7bfab8d1b21e210c5e6a278a8e84d1ed006f447a98b6b08d81812`  
		Last Modified: Mon, 30 Apr 2018 07:12:15 GMT  
		Size: 10.2 MB (10169122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f4550fd7ee48cd59c6fced7997af224f3f7f50f640e35121b6d9779564d447`  
		Last Modified: Mon, 30 Apr 2018 07:12:09 GMT  
		Size: 20.4 KB (20436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cac39ec886e1d88b0127c2eb129f0d0a79585e3468d84f8a851e009fcb1f85`  
		Last Modified: Mon, 30 Apr 2018 07:12:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18dadcb91adce0710c976c84469a63d8d5d91fd1a33fc4cc780d0505aa1e089`  
		Last Modified: Mon, 30 Apr 2018 07:12:18 GMT  
		Size: 44.2 MB (44207072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34432011c242516c4dd6d1549b105cac5edfb7137a980a92bb0bc774296f96`  
		Last Modified: Fri, 04 May 2018 23:42:21 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820c37db8e67c369b629e6e10eba60c1aad7e3cbacc6d124c4e562c15aebc2ea`  
		Last Modified: Fri, 04 May 2018 23:42:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:7e3575b7949a4f8712a47b0fc875022dcea5d84f4672b1532587b6933502f757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:16eefe638c159c5e94d04d031cce5afae0bb873bb145f2343c36d26ff80ab275
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666559 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f5ccdc8aedc4183c2f79dde76d7412913762bf0f0070cd503488b8989e1ed23`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:57:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:57:38 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:57:39 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 30 Apr 2018 05:57:39 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Mon, 30 Apr 2018 05:57:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:57:54 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 05:57:55 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:25 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:27 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5cd6ee094d7bfab8d1b21e210c5e6a278a8e84d1ed006f447a98b6b08d81812`  
		Last Modified: Mon, 30 Apr 2018 07:12:15 GMT  
		Size: 10.2 MB (10169122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f4550fd7ee48cd59c6fced7997af224f3f7f50f640e35121b6d9779564d447`  
		Last Modified: Mon, 30 Apr 2018 07:12:09 GMT  
		Size: 20.4 KB (20436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6cac39ec886e1d88b0127c2eb129f0d0a79585e3468d84f8a851e009fcb1f85`  
		Last Modified: Mon, 30 Apr 2018 07:12:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a18dadcb91adce0710c976c84469a63d8d5d91fd1a33fc4cc780d0505aa1e089`  
		Last Modified: Mon, 30 Apr 2018 07:12:18 GMT  
		Size: 44.2 MB (44207072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e34432011c242516c4dd6d1549b105cac5edfb7137a980a92bb0bc774296f96`  
		Last Modified: Fri, 04 May 2018 23:42:21 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820c37db8e67c369b629e6e10eba60c1aad7e3cbacc6d124c4e562c15aebc2ea`  
		Last Modified: Fri, 04 May 2018 23:42:21 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:f030e84582d939d313fe2ef469b5c65ffd0f7dff3b4b98e6ec9ae2dccd83dcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:81679f23e0ece3e50a7300050191272e5afbf5b66be9b60d2ee0e8b575b152e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d16d0a97dd13a8ca0c0e205ce1f31f64d9d32048379eb322749442bff35f144`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:55:16 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 30 Apr 2018 05:55:17 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Mon, 30 Apr 2018 05:55:17 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:55:36 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 05:55:36 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:20 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:21 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1194add2f3fb0b05e440f3f2fa868e909df3bfc942d7a49ce0ca2efd8a5a00`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5c74178a0293459e3dd346bdf88ed27eca878d68b6befad3751970977e0470`  
		Last Modified: Mon, 30 Apr 2018 06:46:13 GMT  
		Size: 83.5 MB (83462473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9201d309436463a254bbca545b840438aaa56628838392a2497947b5850008e`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ac4524e8e2dfb396a5827aed812f25945d4058efb7491f09c85e45e783535`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:f030e84582d939d313fe2ef469b5c65ffd0f7dff3b4b98e6ec9ae2dccd83dcdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:81679f23e0ece3e50a7300050191272e5afbf5b66be9b60d2ee0e8b575b152e2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d16d0a97dd13a8ca0c0e205ce1f31f64d9d32048379eb322749442bff35f144`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:55:16 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 30 Apr 2018 05:55:17 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Mon, 30 Apr 2018 05:55:17 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:55:36 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 30 Apr 2018 05:55:36 GMT
VOLUME [/var/lib/mysql]
# Fri, 04 May 2018 23:41:20 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:21 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:21 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1194add2f3fb0b05e440f3f2fa868e909df3bfc942d7a49ce0ca2efd8a5a00`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5c74178a0293459e3dd346bdf88ed27eca878d68b6befad3751970977e0470`  
		Last Modified: Mon, 30 Apr 2018 06:46:13 GMT  
		Size: 83.5 MB (83462473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9201d309436463a254bbca545b840438aaa56628838392a2497947b5850008e`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf1ac4524e8e2dfb396a5827aed812f25945d4058efb7491f09c85e45e783535`  
		Last Modified: Fri, 04 May 2018 23:42:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:d60c13a2bfdbbeb9cf1c84fd3cb0a1577b2bbaeec11e44bf345f4da90586e9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:7a33a8bd719ff0fed4f75ba9f0b6e4963c88f6547039a92070ca5ff4ddc4289f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a59477268d92f434d86a73b5ea6de9bf7b05d536359413e79da1feb31f87aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Mon, 30 Apr 2018 05:33:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:33:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 05:33:58 GMT
VOLUME [/var/lib/mysql]
# Mon, 30 Apr 2018 05:33:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 04 May 2018 23:41:15 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:16 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f122eadb264019370dbb9eac74d62c210320849190fd58224957247469e910de`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df40c552a96d2e93b8881870a69ace4cd6d5cfebe1d58113cf1d7d6794e9774`  
		Last Modified: Mon, 30 Apr 2018 06:24:47 GMT  
		Size: 86.7 MB (86654708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7d77a8ed2840ebdb8dc0daba5a21867eadd068e6b268bfb0c965de3ea70d3b`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c5af3b206e239ddce7a9bb062406d17ea10be2b9bec0fb10ac0b00ba422e3`  
		Last Modified: Fri, 04 May 2018 23:41:42 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd1949fa0f591f3e3493bfa577adbb809308910c508841a40b272c75c39403`  
		Last Modified: Fri, 04 May 2018 23:41:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:d60c13a2bfdbbeb9cf1c84fd3cb0a1577b2bbaeec11e44bf345f4da90586e9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:7a33a8bd719ff0fed4f75ba9f0b6e4963c88f6547039a92070ca5ff4ddc4289f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a59477268d92f434d86a73b5ea6de9bf7b05d536359413e79da1feb31f87aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Mon, 30 Apr 2018 05:33:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:33:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 05:33:58 GMT
VOLUME [/var/lib/mysql]
# Mon, 30 Apr 2018 05:33:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 04 May 2018 23:41:15 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:16 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f122eadb264019370dbb9eac74d62c210320849190fd58224957247469e910de`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df40c552a96d2e93b8881870a69ace4cd6d5cfebe1d58113cf1d7d6794e9774`  
		Last Modified: Mon, 30 Apr 2018 06:24:47 GMT  
		Size: 86.7 MB (86654708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7d77a8ed2840ebdb8dc0daba5a21867eadd068e6b268bfb0c965de3ea70d3b`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c5af3b206e239ddce7a9bb062406d17ea10be2b9bec0fb10ac0b00ba422e3`  
		Last Modified: Fri, 04 May 2018 23:41:42 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd1949fa0f591f3e3493bfa577adbb809308910c508841a40b272c75c39403`  
		Last Modified: Fri, 04 May 2018 23:41:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:d60c13a2bfdbbeb9cf1c84fd3cb0a1577b2bbaeec11e44bf345f4da90586e9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:7a33a8bd719ff0fed4f75ba9f0b6e4963c88f6547039a92070ca5ff4ddc4289f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a59477268d92f434d86a73b5ea6de9bf7b05d536359413e79da1feb31f87aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Mon, 30 Apr 2018 05:33:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:33:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 05:33:58 GMT
VOLUME [/var/lib/mysql]
# Mon, 30 Apr 2018 05:33:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 04 May 2018 23:41:15 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:16 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f122eadb264019370dbb9eac74d62c210320849190fd58224957247469e910de`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df40c552a96d2e93b8881870a69ace4cd6d5cfebe1d58113cf1d7d6794e9774`  
		Last Modified: Mon, 30 Apr 2018 06:24:47 GMT  
		Size: 86.7 MB (86654708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7d77a8ed2840ebdb8dc0daba5a21867eadd068e6b268bfb0c965de3ea70d3b`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c5af3b206e239ddce7a9bb062406d17ea10be2b9bec0fb10ac0b00ba422e3`  
		Last Modified: Fri, 04 May 2018 23:41:42 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd1949fa0f591f3e3493bfa577adbb809308910c508841a40b272c75c39403`  
		Last Modified: Fri, 04 May 2018 23:41:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:d60c13a2bfdbbeb9cf1c84fd3cb0a1577b2bbaeec11e44bf345f4da90586e9e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:7a33a8bd719ff0fed4f75ba9f0b6e4963c88f6547039a92070ca5ff4ddc4289f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8a59477268d92f434d86a73b5ea6de9bf7b05d536359413e79da1feb31f87aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Mon, 30 Apr 2018 05:33:10 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 30 Apr 2018 05:33:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:17 GMT
ENV GOSU_VERSION=1.7
# Mon, 30 Apr 2018 05:33:30 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 30 Apr 2018 05:33:31 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 30 Apr 2018 05:33:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 30 Apr 2018 05:33:40 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 30 Apr 2018 05:33:41 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Mon, 30 Apr 2018 05:33:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 30 Apr 2018 05:33:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 30 Apr 2018 05:33:58 GMT
VOLUME [/var/lib/mysql]
# Mon, 30 Apr 2018 05:33:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 04 May 2018 23:41:15 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 04 May 2018 23:41:15 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 04 May 2018 23:41:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 04 May 2018 23:41:16 GMT
EXPOSE 3306/tcp
# Fri, 04 May 2018 23:41:16 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1accf44cb7e00a48bafe2e9fbc96baa759d5751efe646456cd9a2a697d27c0f5`  
		Last Modified: Mon, 30 Apr 2018 06:24:33 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d830ea9fa681d855c1f5f7acba42cd2e00f1b6ccbcc8fe85b29adfe1f01182c`  
		Last Modified: Mon, 30 Apr 2018 06:24:34 GMT  
		Size: 4.5 MB (4498427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740584693b890bc45d22bffe4f47aaaa1f0418e573d062a8061a872e858150af`  
		Last Modified: Mon, 30 Apr 2018 06:24:31 GMT  
		Size: 1.3 MB (1270425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d620357ec48b21e31fb4f8e42a1ac3f68d597c26d0258e4c9d28124640e4539`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3b7158d73d447e93bc14b190412e4d9ce4cf9b23399d6557ea53180b454d7f`  
		Last Modified: Mon, 30 Apr 2018 06:24:35 GMT  
		Size: 12.1 MB (12092374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48d784ee5030cb3279143350913fa37cc66fa33a04374172ca9e638b3aded1c`  
		Last Modified: Mon, 30 Apr 2018 06:24:30 GMT  
		Size: 20.4 KB (20438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f122eadb264019370dbb9eac74d62c210320849190fd58224957247469e910de`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df40c552a96d2e93b8881870a69ace4cd6d5cfebe1d58113cf1d7d6794e9774`  
		Last Modified: Mon, 30 Apr 2018 06:24:47 GMT  
		Size: 86.7 MB (86654708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da7d77a8ed2840ebdb8dc0daba5a21867eadd068e6b268bfb0c965de3ea70d3b`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f03c5af3b206e239ddce7a9bb062406d17ea10be2b9bec0fb10ac0b00ba422e3`  
		Last Modified: Fri, 04 May 2018 23:41:42 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54dd1949fa0f591f3e3493bfa577adbb809308910c508841a40b272c75c39403`  
		Last Modified: Fri, 04 May 2018 23:41:41 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
