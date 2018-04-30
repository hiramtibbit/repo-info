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
$ docker pull mysql@sha256:e3ce1b609c9275ed24afb3465a9dd73cce38385e64c94755edd5e596a5c1bc8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:d94dfc85b5dbe535d56da29f09eb69ba7b9e49bf7e752b68c6680a36c3bca5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db763dfc448bcfc8749b690224740b57e691f44912c14a6b2d6637a7b9f7dbbc`
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
# Mon, 30 Apr 2018 05:55:37 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:55:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:55:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:55:38 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:55:38 GMT
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
	-	`sha256:c1614226503eefdc3b6213fb0e51fd78b8a57b06f23f16ca48820650335c6013`  
		Last Modified: Mon, 30 Apr 2018 06:45:56 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0038589109a047c097f376c6fb5d32458b845f97470dfb7baf67eb7eae436501`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:4d743728bf4688cb9bab9e1344cb3f8611c8b86042e5a4520faea251978f77c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:b0a2839fc8841a817a0395b2d29e6006eb66c2c9adbc6b05dad90080badb5629
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66060009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac63a6ec61acaa2416d07d72e403155d74f7573e1daff73e2368468ce88b2d`
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
# Mon, 30 Apr 2018 06:16:01 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Mon, 30 Apr 2018 06:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 06:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 06:16:03 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 06:16:03 GMT
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
	-	`sha256:8dbc7f2d691137dcffd90514b6ea91d2c64335f691aa238ccd011ab4d30bbbb2`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449eccebdf57467d97e2baaabb8de100c3eba82c0f27e7e3888d76d2c44f2982`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:4d743728bf4688cb9bab9e1344cb3f8611c8b86042e5a4520faea251978f77c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:b0a2839fc8841a817a0395b2d29e6006eb66c2c9adbc6b05dad90080badb5629
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66060009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1ac63a6ec61acaa2416d07d72e403155d74f7573e1daff73e2368468ce88b2d`
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
# Mon, 30 Apr 2018 06:16:01 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Mon, 30 Apr 2018 06:16:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 06:16:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 06:16:03 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 06:16:03 GMT
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
	-	`sha256:8dbc7f2d691137dcffd90514b6ea91d2c64335f691aa238ccd011ab4d30bbbb2`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 2.7 KB (2686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:449eccebdf57467d97e2baaabb8de100c3eba82c0f27e7e3888d76d2c44f2982`  
		Last Modified: Mon, 30 Apr 2018 07:13:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:c636cf8b6d07293d7d05446c1b4e91f799472c6eb858cce4c60b965a0c56561e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:eb3cb65bb3b6db665ec41f250f9be9e6c9ef78a9477339bac40344cf2eaff876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09f6de956341f13f6a5e5f3ecdc37f27e15f892d0953f960fd2956fd3fe9fe4`
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
# Mon, 30 Apr 2018 05:57:55 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:57:56 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:57:57 GMT
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
	-	`sha256:98882079d267d40b9820888564d599276e145336d3055a2b4532ea13667d7c1c`  
		Last Modified: Mon, 30 Apr 2018 07:12:09 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36fb1e0cb2b7f45fc2e0076a237cb93ad7348bc2e79495334d95ba0378d21b`  
		Last Modified: Mon, 30 Apr 2018 07:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:c636cf8b6d07293d7d05446c1b4e91f799472c6eb858cce4c60b965a0c56561e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:eb3cb65bb3b6db665ec41f250f9be9e6c9ef78a9477339bac40344cf2eaff876
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e09f6de956341f13f6a5e5f3ecdc37f27e15f892d0953f960fd2956fd3fe9fe4`
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
# Mon, 30 Apr 2018 05:57:55 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:57:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:57:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:57:56 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:57:57 GMT
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
	-	`sha256:98882079d267d40b9820888564d599276e145336d3055a2b4532ea13667d7c1c`  
		Last Modified: Mon, 30 Apr 2018 07:12:09 GMT  
		Size: 2.7 KB (2659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b36fb1e0cb2b7f45fc2e0076a237cb93ad7348bc2e79495334d95ba0378d21b`  
		Last Modified: Mon, 30 Apr 2018 07:12:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:e3ce1b609c9275ed24afb3465a9dd73cce38385e64c94755edd5e596a5c1bc8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:d94dfc85b5dbe535d56da29f09eb69ba7b9e49bf7e752b68c6680a36c3bca5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db763dfc448bcfc8749b690224740b57e691f44912c14a6b2d6637a7b9f7dbbc`
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
# Mon, 30 Apr 2018 05:55:37 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:55:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:55:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:55:38 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:55:38 GMT
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
	-	`sha256:c1614226503eefdc3b6213fb0e51fd78b8a57b06f23f16ca48820650335c6013`  
		Last Modified: Mon, 30 Apr 2018 06:45:56 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0038589109a047c097f376c6fb5d32458b845f97470dfb7baf67eb7eae436501`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:e3ce1b609c9275ed24afb3465a9dd73cce38385e64c94755edd5e596a5c1bc8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:d94dfc85b5dbe535d56da29f09eb69ba7b9e49bf7e752b68c6680a36c3bca5f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123845046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db763dfc448bcfc8749b690224740b57e691f44912c14a6b2d6637a7b9f7dbbc`
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
# Mon, 30 Apr 2018 05:55:37 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:55:37 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:55:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:55:38 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:55:38 GMT
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
	-	`sha256:c1614226503eefdc3b6213fb0e51fd78b8a57b06f23f16ca48820650335c6013`  
		Last Modified: Mon, 30 Apr 2018 06:45:56 GMT  
		Size: 2.7 KB (2679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0038589109a047c097f376c6fb5d32458b845f97470dfb7baf67eb7eae436501`  
		Last Modified: Mon, 30 Apr 2018 06:45:57 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:04ff0d061fb05f5849415f644806584cd4a0a0baac07c8d9a8ad71fd629f845c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:c041e3a8a9ebbd420091085c17e9c4b5ddb5552597ea3466c16ebaa4eaa220c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bbf861367ac104c2343bbf3ffb73fcd29aa18b480326e968d041ee5f04aad7`
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
# Mon, 30 Apr 2018 05:33:59 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:34:01 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:34:01 GMT
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
	-	`sha256:f8aaeb9a4f41e9c2dc52654a0d04b14f02c7530ccfa118f6244fa2888fa810f0`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 2.8 KB (2756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5422e3698c489b1e9972a86d72c535bdaa927276d13576f4704c3c5b0b805221`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:04ff0d061fb05f5849415f644806584cd4a0a0baac07c8d9a8ad71fd629f845c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:c041e3a8a9ebbd420091085c17e9c4b5ddb5552597ea3466c16ebaa4eaa220c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bbf861367ac104c2343bbf3ffb73fcd29aa18b480326e968d041ee5f04aad7`
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
# Mon, 30 Apr 2018 05:33:59 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:34:01 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:34:01 GMT
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
	-	`sha256:f8aaeb9a4f41e9c2dc52654a0d04b14f02c7530ccfa118f6244fa2888fa810f0`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 2.8 KB (2756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5422e3698c489b1e9972a86d72c535bdaa927276d13576f4704c3c5b0b805221`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:04ff0d061fb05f5849415f644806584cd4a0a0baac07c8d9a8ad71fd629f845c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:c041e3a8a9ebbd420091085c17e9c4b5ddb5552597ea3466c16ebaa4eaa220c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bbf861367ac104c2343bbf3ffb73fcd29aa18b480326e968d041ee5f04aad7`
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
# Mon, 30 Apr 2018 05:33:59 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:34:01 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:34:01 GMT
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
	-	`sha256:f8aaeb9a4f41e9c2dc52654a0d04b14f02c7530ccfa118f6244fa2888fa810f0`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 2.8 KB (2756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5422e3698c489b1e9972a86d72c535bdaa927276d13576f4704c3c5b0b805221`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:04ff0d061fb05f5849415f644806584cd4a0a0baac07c8d9a8ad71fd629f845c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:c041e3a8a9ebbd420091085c17e9c4b5ddb5552597ea3466c16ebaa4eaa220c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127038258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80bbf861367ac104c2343bbf3ffb73fcd29aa18b480326e968d041ee5f04aad7`
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
# Mon, 30 Apr 2018 05:33:59 GMT
COPY file:52165f925b5b39674a89a9f41fdbf90a3ae7ed334fb898f424180c8d723d326f in /usr/local/bin/ 
# Mon, 30 Apr 2018 05:34:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 30 Apr 2018 05:34:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 30 Apr 2018 05:34:01 GMT
EXPOSE 3306/tcp
# Mon, 30 Apr 2018 05:34:01 GMT
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
	-	`sha256:f8aaeb9a4f41e9c2dc52654a0d04b14f02c7530ccfa118f6244fa2888fa810f0`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 2.8 KB (2756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5422e3698c489b1e9972a86d72c535bdaa927276d13576f4704c3c5b0b805221`  
		Last Modified: Mon, 30 Apr 2018 06:24:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
