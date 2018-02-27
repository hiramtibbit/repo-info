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
$ docker pull mysql@sha256:227d5c3f54ee3a70c075b1c3013e72781564000d34fc8c7ec5ec353c5b7ef7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:b250e6533dce56ca4c7c629fcbf5b2b5e8e60ba3eaea5ace37a5e12b4eb23bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124280782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d51c57ea80cec97503b6cdd8bebd0c904c19cf1d32270786a14b18e6ad454`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Mon, 26 Feb 2018 23:11:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:12:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:12:04 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:12:05 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:12:05 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6fa8f07ec4a8c822d5a6af8f1930a8f47782103084819f8671ae7b4f274deb`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece17b689642566282aad3060fc67908d7600c53673ff7e5b3faa3e42c581245`  
		Last Modified: Mon, 26 Feb 2018 23:25:57 GMT  
		Size: 83.9 MB (83899803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55b06e76eaf331abbd7843c2759c0c33b49216acd91a7e54e63eea97be5d6d6`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 2.7 KB (2683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fabfb4fc2fad5f658378fda5b6bbd7540f7b95338946953178cc9b168354a`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:fb4be7364b89891cb5c7aaee972afffc8bbf0fa9e067f779125fa380d81d91fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:6554300202dcfa4feb7f4d525a936a368dd1426ba97dc2508ab054f92e7e4ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66078402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016bbb6bd994597859ff163f6cdfbde0642b2d639f3037581ae9537b8a264e08`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 26 Feb 2018 23:21:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 26 Feb 2018 23:21:05 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 26 Feb 2018 23:21:06 GMT
ENV MYSQL_VERSION=5.5.59
# Mon, 26 Feb 2018 23:22:35 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 26 Feb 2018 23:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 26 Feb 2018 23:22:36 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 26 Feb 2018 23:22:37 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 26 Feb 2018 23:22:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:22:38 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:22:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:22:39 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:22:39 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd484b8fd139426a96160a8904f3d00a278d792b3979f99ebad334e7abcc37fb`  
		Last Modified: Mon, 26 Feb 2018 23:27:53 GMT  
		Size: 10.3 MB (10291994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648c498d3a8a75f360d9136a8bb3c28cba789e5c5cd83574a702154323d1787e`  
		Last Modified: Mon, 26 Feb 2018 23:27:52 GMT  
		Size: 27.5 MB (27515804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207c6851ea2ac7971b86bc68e631b2656647e86999fa27a1aecb3773c952789`  
		Last Modified: Mon, 26 Feb 2018 23:27:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3511a019f273d6ac996289e9ac398caa6c08292b80088ed408b6f428bfa8fc42`  
		Last Modified: Mon, 26 Feb 2018 23:27:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a17c854e9561f011e3daca30778b298324d0251aeb81336c6ffb3c62b5a687`  
		Last Modified: Mon, 26 Feb 2018 23:27:49 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e7f950652bc23c4e372d3f8193305e91b5595d76ed832a4ef0b99d0852fba6`  
		Last Modified: Mon, 26 Feb 2018 23:27:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.59`

```console
$ docker pull mysql@sha256:fb4be7364b89891cb5c7aaee972afffc8bbf0fa9e067f779125fa380d81d91fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.59` - linux; amd64

```console
$ docker pull mysql@sha256:6554300202dcfa4feb7f4d525a936a368dd1426ba97dc2508ab054f92e7e4ac1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66078402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016bbb6bd994597859ff163f6cdfbde0642b2d639f3037581ae9537b8a264e08`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 26 Feb 2018 23:21:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Mon, 26 Feb 2018 23:21:05 GMT
ENV MYSQL_MAJOR=5.5
# Mon, 26 Feb 2018 23:21:06 GMT
ENV MYSQL_VERSION=5.5.59
# Mon, 26 Feb 2018 23:22:35 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Mon, 26 Feb 2018 23:22:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Mon, 26 Feb 2018 23:22:36 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Mon, 26 Feb 2018 23:22:37 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 26 Feb 2018 23:22:37 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:22:38 GMT
COPY file:f362acc5afb0c2bf0768eefec180b1ddc26f32c538f2223af2fe9fbd85a6ccfa in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:22:38 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:22:39 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:22:39 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd484b8fd139426a96160a8904f3d00a278d792b3979f99ebad334e7abcc37fb`  
		Last Modified: Mon, 26 Feb 2018 23:27:53 GMT  
		Size: 10.3 MB (10291994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648c498d3a8a75f360d9136a8bb3c28cba789e5c5cd83574a702154323d1787e`  
		Last Modified: Mon, 26 Feb 2018 23:27:52 GMT  
		Size: 27.5 MB (27515804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d207c6851ea2ac7971b86bc68e631b2656647e86999fa27a1aecb3773c952789`  
		Last Modified: Mon, 26 Feb 2018 23:27:48 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3511a019f273d6ac996289e9ac398caa6c08292b80088ed408b6f428bfa8fc42`  
		Last Modified: Mon, 26 Feb 2018 23:27:53 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a17c854e9561f011e3daca30778b298324d0251aeb81336c6ffb3c62b5a687`  
		Last Modified: Mon, 26 Feb 2018 23:27:49 GMT  
		Size: 2.7 KB (2688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6e7f950652bc23c4e372d3f8193305e91b5595d76ed832a4ef0b99d0852fba6`  
		Last Modified: Mon, 26 Feb 2018 23:27:48 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:ed2bb560e3188817a3c838ce50e5ac9af520e046d660747dfa6fd15296f1a911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:d1716475133a6cccd77fabec14ae5074fcc4caf6d1881cbed12f5b0e9249fcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82662637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0248eeb807c7e33d217c503860d6672ea26b90271d3ba3ef54fa79c9f7026e91`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 26 Feb 2018 23:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 26 Feb 2018 23:17:24 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:17:24 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 26 Feb 2018 23:17:24 GMT
ENV MYSQL_VERSION=5.6.39-1debian9
# Mon, 26 Feb 2018 23:17:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:17:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:17:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:17:42 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:17:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:17:43 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:17:43 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bfd3d8b1a4d06ec09476cebfb54ee7b4abb442c5dd2cd4fb4fb227dc40666`  
		Last Modified: Mon, 26 Feb 2018 23:27:10 GMT  
		Size: 10.2 MB (10169889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41c756aa7792f5989027503f0404c017457f606cb1e5831d73957450ac7412`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 20.4 KB (20434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9c172f85d396fcf5f550cb5843dd18d007aac731255dd25881781463fee378`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b9665f817b182ce7cf34444bfb079649f2717741be405fff76de6e4f46cef4`  
		Last Modified: Mon, 26 Feb 2018 23:27:13 GMT  
		Size: 44.2 MB (44201931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de94f1b7d21cae7831e2bb1767a69493731d676cfbe95868e740d4d6e78319b`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6093d58fb45495b0707c816864788993b8614ed0a3a88ab0027fbfca04ba0680`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.39`

```console
$ docker pull mysql@sha256:ed2bb560e3188817a3c838ce50e5ac9af520e046d660747dfa6fd15296f1a911
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.39` - linux; amd64

```console
$ docker pull mysql@sha256:d1716475133a6cccd77fabec14ae5074fcc4caf6d1881cbed12f5b0e9249fcdf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82662637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0248eeb807c7e33d217c503860d6672ea26b90271d3ba3ef54fa79c9f7026e91`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 26 Feb 2018 23:17:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 26 Feb 2018 23:17:24 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:17:24 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 26 Feb 2018 23:17:24 GMT
ENV MYSQL_VERSION=5.6.39-1debian9
# Mon, 26 Feb 2018 23:17:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:17:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:17:42 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:17:42 GMT
COPY file:3f2c5993b48cc20b5a57b4a86c72dd2fbfa95c7a8fe43f0f54280f77c0063f34 in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:17:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:17:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:17:43 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:17:43 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a9bfd3d8b1a4d06ec09476cebfb54ee7b4abb442c5dd2cd4fb4fb227dc40666`  
		Last Modified: Mon, 26 Feb 2018 23:27:10 GMT  
		Size: 10.2 MB (10169889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a41c756aa7792f5989027503f0404c017457f606cb1e5831d73957450ac7412`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 20.4 KB (20434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f9c172f85d396fcf5f550cb5843dd18d007aac731255dd25881781463fee378`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7b9665f817b182ce7cf34444bfb079649f2717741be405fff76de6e4f46cef4`  
		Last Modified: Mon, 26 Feb 2018 23:27:13 GMT  
		Size: 44.2 MB (44201931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5de94f1b7d21cae7831e2bb1767a69493731d676cfbe95868e740d4d6e78319b`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 2.7 KB (2658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6093d58fb45495b0707c816864788993b8614ed0a3a88ab0027fbfca04ba0680`  
		Last Modified: Mon, 26 Feb 2018 23:27:04 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:227d5c3f54ee3a70c075b1c3013e72781564000d34fc8c7ec5ec353c5b7ef7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:b250e6533dce56ca4c7c629fcbf5b2b5e8e60ba3eaea5ace37a5e12b4eb23bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124280782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d51c57ea80cec97503b6cdd8bebd0c904c19cf1d32270786a14b18e6ad454`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Mon, 26 Feb 2018 23:11:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:12:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:12:04 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:12:05 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:12:05 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6fa8f07ec4a8c822d5a6af8f1930a8f47782103084819f8671ae7b4f274deb`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece17b689642566282aad3060fc67908d7600c53673ff7e5b3faa3e42c581245`  
		Last Modified: Mon, 26 Feb 2018 23:25:57 GMT  
		Size: 83.9 MB (83899803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55b06e76eaf331abbd7843c2759c0c33b49216acd91a7e54e63eea97be5d6d6`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 2.7 KB (2683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fabfb4fc2fad5f658378fda5b6bbd7540f7b95338946953178cc9b168354a`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.21`

```console
$ docker pull mysql@sha256:227d5c3f54ee3a70c075b1c3013e72781564000d34fc8c7ec5ec353c5b7ef7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.21` - linux; amd64

```console
$ docker pull mysql@sha256:b250e6533dce56ca4c7c629fcbf5b2b5e8e60ba3eaea5ace37a5e12b4eb23bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124280782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d51c57ea80cec97503b6cdd8bebd0c904c19cf1d32270786a14b18e6ad454`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Mon, 26 Feb 2018 23:11:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:12:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:12:04 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:12:05 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:12:05 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6fa8f07ec4a8c822d5a6af8f1930a8f47782103084819f8671ae7b4f274deb`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece17b689642566282aad3060fc67908d7600c53673ff7e5b3faa3e42c581245`  
		Last Modified: Mon, 26 Feb 2018 23:25:57 GMT  
		Size: 83.9 MB (83899803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55b06e76eaf331abbd7843c2759c0c33b49216acd91a7e54e63eea97be5d6d6`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 2.7 KB (2683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fabfb4fc2fad5f658378fda5b6bbd7540f7b95338946953178cc9b168354a`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:a01485bf022e22af276164c595ae14eaf34d84fb326eea062c1b0d55635b6754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:10cd65ea9841975d3993f161a7c5f4c51b704cda0e1e7893f2638e8c82405f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c775f2c31002d763b885f6636f9012eb17b56d155ae7fd139e68aa32d93ac2`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:08 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 22 Feb 2018 19:41:49 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 26 Feb 2018 23:11:27 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:11:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:11:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:11:28 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:11:29 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f6e9fddc3d83a1c1af24d82e90e1ab14c40d03a7c426a1a8108cdabd55bf04`  
		Last Modified: Thu, 22 Feb 2018 19:42:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e571b890b0e252178ffaff0e4d3a38b0b38371077a662b4f6f49fcca0237a150`  
		Last Modified: Thu, 22 Feb 2018 19:42:25 GMT  
		Size: 47.1 MB (47085757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d648fdd9a3751fcc08783a7ddd56e083981c0d7d23cb089bcc6bc97f2fd6995`  
		Last Modified: Thu, 22 Feb 2018 19:42:13 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610d4181c601d159a1ea2742c18f558a1f5635c2f7d240d881c40ba307c86d7d`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1042e76e84d836dc6aa61cc128468e3504db1439d94c6c416823ff3c611441a`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:a01485bf022e22af276164c595ae14eaf34d84fb326eea062c1b0d55635b6754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:10cd65ea9841975d3993f161a7c5f4c51b704cda0e1e7893f2638e8c82405f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c775f2c31002d763b885f6636f9012eb17b56d155ae7fd139e68aa32d93ac2`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:08 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 22 Feb 2018 19:41:49 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 26 Feb 2018 23:11:27 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:11:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:11:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:11:28 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:11:29 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f6e9fddc3d83a1c1af24d82e90e1ab14c40d03a7c426a1a8108cdabd55bf04`  
		Last Modified: Thu, 22 Feb 2018 19:42:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e571b890b0e252178ffaff0e4d3a38b0b38371077a662b4f6f49fcca0237a150`  
		Last Modified: Thu, 22 Feb 2018 19:42:25 GMT  
		Size: 47.1 MB (47085757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d648fdd9a3751fcc08783a7ddd56e083981c0d7d23cb089bcc6bc97f2fd6995`  
		Last Modified: Thu, 22 Feb 2018 19:42:13 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610d4181c601d159a1ea2742c18f558a1f5635c2f7d240d881c40ba307c86d7d`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1042e76e84d836dc6aa61cc128468e3504db1439d94c6c416823ff3c611441a`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.4`

```console
$ docker pull mysql@sha256:a01485bf022e22af276164c595ae14eaf34d84fb326eea062c1b0d55635b6754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.4` - linux; amd64

```console
$ docker pull mysql@sha256:10cd65ea9841975d3993f161a7c5f4c51b704cda0e1e7893f2638e8c82405f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c775f2c31002d763b885f6636f9012eb17b56d155ae7fd139e68aa32d93ac2`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:08 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 22 Feb 2018 19:41:49 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 26 Feb 2018 23:11:27 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:11:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:11:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:11:28 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:11:29 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f6e9fddc3d83a1c1af24d82e90e1ab14c40d03a7c426a1a8108cdabd55bf04`  
		Last Modified: Thu, 22 Feb 2018 19:42:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e571b890b0e252178ffaff0e4d3a38b0b38371077a662b4f6f49fcca0237a150`  
		Last Modified: Thu, 22 Feb 2018 19:42:25 GMT  
		Size: 47.1 MB (47085757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d648fdd9a3751fcc08783a7ddd56e083981c0d7d23cb089bcc6bc97f2fd6995`  
		Last Modified: Thu, 22 Feb 2018 19:42:13 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610d4181c601d159a1ea2742c18f558a1f5635c2f7d240d881c40ba307c86d7d`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1042e76e84d836dc6aa61cc128468e3504db1439d94c6c416823ff3c611441a`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.4-rc`

```console
$ docker pull mysql@sha256:a01485bf022e22af276164c595ae14eaf34d84fb326eea062c1b0d55635b6754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.4-rc` - linux; amd64

```console
$ docker pull mysql@sha256:10cd65ea9841975d3993f161a7c5f4c51b704cda0e1e7893f2638e8c82405f26
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.5 MB (87467628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19c775f2c31002d763b885f6636f9012eb17b56d155ae7fd139e68aa32d93ac2`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 21 Feb 2018 16:47:08 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 21 Feb 2018 16:47:09 GMT
ENV MYSQL_VERSION=8.0.4-rc-1debian9
# Wed, 21 Feb 2018 16:47:11 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 21 Feb 2018 16:47:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 21 Feb 2018 16:47:26 GMT
VOLUME [/var/lib/mysql]
# Thu, 22 Feb 2018 19:41:49 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Mon, 26 Feb 2018 23:11:27 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:11:28 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:11:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:11:28 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:11:29 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f6e9fddc3d83a1c1af24d82e90e1ab14c40d03a7c426a1a8108cdabd55bf04`  
		Last Modified: Thu, 22 Feb 2018 19:42:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e571b890b0e252178ffaff0e4d3a38b0b38371077a662b4f6f49fcca0237a150`  
		Last Modified: Thu, 22 Feb 2018 19:42:25 GMT  
		Size: 47.1 MB (47085757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d648fdd9a3751fcc08783a7ddd56e083981c0d7d23cb089bcc6bc97f2fd6995`  
		Last Modified: Thu, 22 Feb 2018 19:42:13 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:610d4181c601d159a1ea2742c18f558a1f5635c2f7d240d881c40ba307c86d7d`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 2.7 KB (2682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1042e76e84d836dc6aa61cc128468e3504db1439d94c6c416823ff3c611441a`  
		Last Modified: Mon, 26 Feb 2018 23:24:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:227d5c3f54ee3a70c075b1c3013e72781564000d34fc8c7ec5ec353c5b7ef7fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:b250e6533dce56ca4c7c629fcbf5b2b5e8e60ba3eaea5ace37a5e12b4eb23bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.3 MB (124280782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d4d51c57ea80cec97503b6cdd8bebd0c904c19cf1d32270786a14b18e6ad454`
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
# Wed, 21 Feb 2018 16:46:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 21 Feb 2018 16:46:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 21 Feb 2018 16:46:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 16:47:08 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 26 Feb 2018 23:11:43 GMT
ENV MYSQL_VERSION=5.7.21-1debian9
# Mon, 26 Feb 2018 23:11:44 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 26 Feb 2018 23:12:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 26 Feb 2018 23:12:04 GMT
VOLUME [/var/lib/mysql]
# Mon, 26 Feb 2018 23:12:04 GMT
COPY file:05922d368ede304251c6ec3c7ddaaad93a2e4694cba77c9b3df80e006edd7b0e in /usr/local/bin/ 
# Mon, 26 Feb 2018 23:12:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 26 Feb 2018 23:12:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 26 Feb 2018 23:12:05 GMT
EXPOSE 3306/tcp
# Mon, 26 Feb 2018 23:12:05 GMT
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
	-	`sha256:c90ab4483f28f6a9e16c059e4df1f5bbc3b4b5183b4764320be7107908375648`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 1.3 MB (1270370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6af16572c5ca6b10d9cb35f8c875ba1e67772fa4c391c9ac860022896c7bc5a`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d16794d04aca6292d3d88831bcb1dcbb61ad290947076a054c07a82cfced739`  
		Last Modified: Thu, 22 Feb 2018 19:42:19 GMT  
		Size: 12.1 MB (12089546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf442a8fe75d6272677a1bb33dc9e285f56a98d63617dda3fc9987635c9c683`  
		Last Modified: Thu, 22 Feb 2018 19:42:15 GMT  
		Size: 21.0 KB (21024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6fa8f07ec4a8c822d5a6af8f1930a8f47782103084819f8671ae7b4f274deb`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece17b689642566282aad3060fc67908d7600c53673ff7e5b3faa3e42c581245`  
		Last Modified: Mon, 26 Feb 2018 23:25:57 GMT  
		Size: 83.9 MB (83899803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55b06e76eaf331abbd7843c2759c0c33b49216acd91a7e54e63eea97be5d6d6`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 2.7 KB (2683 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661fabfb4fc2fad5f658378fda5b6bbd7540f7b95338946953178cc9b168354a`  
		Last Modified: Mon, 26 Feb 2018 23:25:42 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
