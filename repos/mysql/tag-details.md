<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.62`](#mysql5562)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.42`](#mysql5642)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.24`](#mysql5724)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.13`](#mysql8013)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:c23e9bfe66eeffc990cf6bce4bb0e9c5c85eb908170f3b3dde3e9a12c5a91689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:5996e24b8bb3d598ddc56a3ad3a58fcdfa3a538d2eb2d672147c6f5030b0a0bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123943289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6b78bedf88330a5e5392164f40d28ed8a38120b142905d30b652ebffece10e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:13:49 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 16 Nov 2018 01:13:50 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Fri, 16 Nov 2018 01:13:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:14:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:14:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:14:18 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:14:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:14:20 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:14:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7905d9fbbea59dc29d709d1d61a96c06c26a2d1e506ac5c3832a348969052b8`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2a6583723557a1dc58584f53564f791dbb7a5d264bb2f8d71aa8c5d21ac38c`  
		Last Modified: Fri, 16 Nov 2018 01:24:48 GMT  
		Size: 83.6 MB (83565354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f906b8da5fed2070448fed578b93cb1a995be5bdde5624163fbcb842ce4460f`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e5181556720e9c821bdb826dd9dbeb078dd28af8fe84586aa904ff212d117`  
		Last Modified: Fri, 16 Nov 2018 01:24:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:bcea07a15664a1aa0cb9f7337af8ff0f70eecdef22a6b6462818cde6a3f0588f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:71b5149b1e4d0620ceaffa2d153d68583dcfdc444a3857cd9ae611811099cced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66067623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff81d304f1ec4e9ad50c78ffee8b3a6d182ed2baeb576c233b9cb35da2737b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:17:46 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 16 Nov 2018 01:17:46 GMT
ENV MYSQL_VERSION=5.5.62
# Fri, 16 Nov 2018 01:19:53 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 16 Nov 2018 01:19:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 16 Nov 2018 01:19:55 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 16 Nov 2018 01:19:56 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:19:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:19:56 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:19:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:19:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 01:19:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e253c524923de496c9e0b12644a1ef1e1f54d0aa416ecaa264bbd67c18852443`  
		Last Modified: Fri, 16 Nov 2018 01:26:21 GMT  
		Size: 10.3 MB (10291976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07c472eed65cbfeb9099a75124b469722abcb06c3ed851e7905f28a09a46f86`  
		Last Modified: Fri, 16 Nov 2018 01:26:30 GMT  
		Size: 27.5 MB (27512829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3a8e1d109d26a6cf4558bc5b7f5933cf5d43833352df66324b5d956d3fd55c`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb62064f920becc193d76003a9a7ce50eec7b2197d729284906927fb737e7c`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c45cfe6cc5c7c3f03f7f64352146bbd25fea2666c070e84901910c5c2db4dd`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714ca4835d3de5004f15b0782cbba3f3c701285a3caa7d283f7e8a3b570fcf8a`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:bcea07a15664a1aa0cb9f7337af8ff0f70eecdef22a6b6462818cde6a3f0588f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:71b5149b1e4d0620ceaffa2d153d68583dcfdc444a3857cd9ae611811099cced
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66067623 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ff81d304f1ec4e9ad50c78ffee8b3a6d182ed2baeb576c233b9cb35da2737b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:17:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:17:46 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 16 Nov 2018 01:17:46 GMT
ENV MYSQL_VERSION=5.5.62
# Fri, 16 Nov 2018 01:19:53 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 16 Nov 2018 01:19:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 16 Nov 2018 01:19:55 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 16 Nov 2018 01:19:56 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:19:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:19:56 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:19:58 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:19:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:19:58 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 01:19:59 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e253c524923de496c9e0b12644a1ef1e1f54d0aa416ecaa264bbd67c18852443`  
		Last Modified: Fri, 16 Nov 2018 01:26:21 GMT  
		Size: 10.3 MB (10291976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d07c472eed65cbfeb9099a75124b469722abcb06c3ed851e7905f28a09a46f86`  
		Last Modified: Fri, 16 Nov 2018 01:26:30 GMT  
		Size: 27.5 MB (27512829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3a8e1d109d26a6cf4558bc5b7f5933cf5d43833352df66324b5d956d3fd55c`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aecb62064f920becc193d76003a9a7ce50eec7b2197d729284906927fb737e7c`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:96c45cfe6cc5c7c3f03f7f64352146bbd25fea2666c070e84901910c5c2db4dd`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714ca4835d3de5004f15b0782cbba3f3c701285a3caa7d283f7e8a3b570fcf8a`  
		Last Modified: Fri, 16 Nov 2018 01:26:16 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:9e4754be7edf813fed12f9283e86678694da71b0a7d4fefe082dfb9020a3ac99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:bdefcf1f2da44e4bfba42d28fb73a2cbf98ede0cf1d0406bb49596e2b18c91a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82691242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876cc5d29e47b09d351176eeafa613d8d0cc7d834cd815efb172c0997abc40e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:15:57 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:15:58 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 16 Nov 2018 01:15:58 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Fri, 16 Nov 2018 01:15:59 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:16:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:16:15 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:16:16 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:16:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:16:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:16:17 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 01:16:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f72e1975bae3e00c172fa1484b873db08c48938e8db4a166e19e5ed9c5751`  
		Last Modified: Fri, 16 Nov 2018 01:25:36 GMT  
		Size: 10.2 MB (10169094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44df6e1fae206954bc6280ce70466632551edea7c0f755bf7b86bd9faa5dac69`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 24.0 KB (24043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0038784249ffe68d376cb2fa76c517cb11ac4ccb85040ec701a53289748bb69`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43eb2805d29c1695980c5482922cc73e3acd2c6c43e6b5d9b0e5d16ce2b05145`  
		Last Modified: Fri, 16 Nov 2018 01:25:40 GMT  
		Size: 44.2 MB (44235509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4093ac5972796aa78a384b0ba7fd2e0068f7b69a142cea78767dfd5fffef88`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 2.9 KB (2852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df42a7acb6ee2a8f40faf30fe322664aaadcce9eb9bc211f42ce5526494a62c`  
		Last Modified: Fri, 16 Nov 2018 01:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.42`

```console
$ docker pull mysql@sha256:9e4754be7edf813fed12f9283e86678694da71b0a7d4fefe082dfb9020a3ac99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.42` - linux; amd64

```console
$ docker pull mysql@sha256:bdefcf1f2da44e4bfba42d28fb73a2cbf98ede0cf1d0406bb49596e2b18c91a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82691242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a876cc5d29e47b09d351176eeafa613d8d0cc7d834cd815efb172c0997abc40e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:15:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:15:57 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:15:58 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 16 Nov 2018 01:15:58 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Fri, 16 Nov 2018 01:15:59 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:16:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:16:15 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:16:16 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:16:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:16:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:16:17 GMT
EXPOSE 3306/tcp
# Fri, 16 Nov 2018 01:16:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee4f72e1975bae3e00c172fa1484b873db08c48938e8db4a166e19e5ed9c5751`  
		Last Modified: Fri, 16 Nov 2018 01:25:36 GMT  
		Size: 10.2 MB (10169094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44df6e1fae206954bc6280ce70466632551edea7c0f755bf7b86bd9faa5dac69`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 24.0 KB (24043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0038784249ffe68d376cb2fa76c517cb11ac4ccb85040ec701a53289748bb69`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43eb2805d29c1695980c5482922cc73e3acd2c6c43e6b5d9b0e5d16ce2b05145`  
		Last Modified: Fri, 16 Nov 2018 01:25:40 GMT  
		Size: 44.2 MB (44235509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4093ac5972796aa78a384b0ba7fd2e0068f7b69a142cea78767dfd5fffef88`  
		Last Modified: Fri, 16 Nov 2018 01:25:31 GMT  
		Size: 2.9 KB (2852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df42a7acb6ee2a8f40faf30fe322664aaadcce9eb9bc211f42ce5526494a62c`  
		Last Modified: Fri, 16 Nov 2018 01:25:32 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:c23e9bfe66eeffc990cf6bce4bb0e9c5c85eb908170f3b3dde3e9a12c5a91689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:5996e24b8bb3d598ddc56a3ad3a58fcdfa3a538d2eb2d672147c6f5030b0a0bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123943289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6b78bedf88330a5e5392164f40d28ed8a38120b142905d30b652ebffece10e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:13:49 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 16 Nov 2018 01:13:50 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Fri, 16 Nov 2018 01:13:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:14:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:14:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:14:18 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:14:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:14:20 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:14:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7905d9fbbea59dc29d709d1d61a96c06c26a2d1e506ac5c3832a348969052b8`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2a6583723557a1dc58584f53564f791dbb7a5d264bb2f8d71aa8c5d21ac38c`  
		Last Modified: Fri, 16 Nov 2018 01:24:48 GMT  
		Size: 83.6 MB (83565354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f906b8da5fed2070448fed578b93cb1a995be5bdde5624163fbcb842ce4460f`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e5181556720e9c821bdb826dd9dbeb078dd28af8fe84586aa904ff212d117`  
		Last Modified: Fri, 16 Nov 2018 01:24:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.24`

```console
$ docker pull mysql@sha256:c23e9bfe66eeffc990cf6bce4bb0e9c5c85eb908170f3b3dde3e9a12c5a91689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.24` - linux; amd64

```console
$ docker pull mysql@sha256:5996e24b8bb3d598ddc56a3ad3a58fcdfa3a538d2eb2d672147c6f5030b0a0bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123943289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6b78bedf88330a5e5392164f40d28ed8a38120b142905d30b652ebffece10e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:13:49 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 16 Nov 2018 01:13:50 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Fri, 16 Nov 2018 01:13:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:14:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 16 Nov 2018 01:14:17 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:14:18 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:14:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:14:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:14:20 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:14:20 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7905d9fbbea59dc29d709d1d61a96c06c26a2d1e506ac5c3832a348969052b8`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd2a6583723557a1dc58584f53564f791dbb7a5d264bb2f8d71aa8c5d21ac38c`  
		Last Modified: Fri, 16 Nov 2018 01:24:48 GMT  
		Size: 83.6 MB (83565354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f906b8da5fed2070448fed578b93cb1a995be5bdde5624163fbcb842ce4460f`  
		Last Modified: Fri, 16 Nov 2018 01:24:33 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e81e5181556720e9c821bdb826dd9dbeb078dd28af8fe84586aa904ff212d117`  
		Last Modified: Fri, 16 Nov 2018 01:24:34 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:b7f7479f0a2e7a3f4ce008329572f3497075dc000d8b89bac3134b0fb0288de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:3319ff58b4bbeadb4c078418b676641ae7a516bd1ec0188eafec6b6b29f3ad1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138305864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991c20cb5087fdd01fa7a2181f0a123a54d697681cf3723370bf50566d2e7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Fri, 16 Nov 2018 01:11:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:12:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:12:22 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:12:22 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 16 Nov 2018 01:12:23 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:12:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:12:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:12:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e1170b4fdbbf66003cff54439d6e6e6ec4a0e80e4bb3ba418931c0ba372fc8`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88918a9e47424798171c98ac0955b01b8c05310eb1700824cbd7eb1651a9fa63`  
		Last Modified: Fri, 16 Nov 2018 01:22:08 GMT  
		Size: 97.9 MB (97926961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241282fa67c22084bf92b5b906140a4626c450bd8b38f3d0636edccfedd22e77`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fecf6192100ab3647085c3bdf33a75cfab3a5203873dd17981f7361f87f902`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf9f901dcc12370d2c5183f817884c2a3f7a776aa6f72b17fb736af8d5a9f5`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:b7f7479f0a2e7a3f4ce008329572f3497075dc000d8b89bac3134b0fb0288de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:3319ff58b4bbeadb4c078418b676641ae7a516bd1ec0188eafec6b6b29f3ad1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138305864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991c20cb5087fdd01fa7a2181f0a123a54d697681cf3723370bf50566d2e7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Fri, 16 Nov 2018 01:11:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:12:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:12:22 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:12:22 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 16 Nov 2018 01:12:23 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:12:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:12:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:12:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e1170b4fdbbf66003cff54439d6e6e6ec4a0e80e4bb3ba418931c0ba372fc8`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88918a9e47424798171c98ac0955b01b8c05310eb1700824cbd7eb1651a9fa63`  
		Last Modified: Fri, 16 Nov 2018 01:22:08 GMT  
		Size: 97.9 MB (97926961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241282fa67c22084bf92b5b906140a4626c450bd8b38f3d0636edccfedd22e77`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fecf6192100ab3647085c3bdf33a75cfab3a5203873dd17981f7361f87f902`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf9f901dcc12370d2c5183f817884c2a3f7a776aa6f72b17fb736af8d5a9f5`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.13`

```console
$ docker pull mysql@sha256:b7f7479f0a2e7a3f4ce008329572f3497075dc000d8b89bac3134b0fb0288de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.13` - linux; amd64

```console
$ docker pull mysql@sha256:3319ff58b4bbeadb4c078418b676641ae7a516bd1ec0188eafec6b6b29f3ad1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138305864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991c20cb5087fdd01fa7a2181f0a123a54d697681cf3723370bf50566d2e7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Fri, 16 Nov 2018 01:11:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:12:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:12:22 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:12:22 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 16 Nov 2018 01:12:23 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:12:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:12:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:12:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e1170b4fdbbf66003cff54439d6e6e6ec4a0e80e4bb3ba418931c0ba372fc8`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88918a9e47424798171c98ac0955b01b8c05310eb1700824cbd7eb1651a9fa63`  
		Last Modified: Fri, 16 Nov 2018 01:22:08 GMT  
		Size: 97.9 MB (97926961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241282fa67c22084bf92b5b906140a4626c450bd8b38f3d0636edccfedd22e77`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fecf6192100ab3647085c3bdf33a75cfab3a5203873dd17981f7361f87f902`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf9f901dcc12370d2c5183f817884c2a3f7a776aa6f72b17fb736af8d5a9f5`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:b7f7479f0a2e7a3f4ce008329572f3497075dc000d8b89bac3134b0fb0288de8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:3319ff58b4bbeadb4c078418b676641ae7a516bd1ec0188eafec6b6b29f3ad1d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138305864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f991c20cb5087fdd01fa7a2181f0a123a54d697681cf3723370bf50566d2e7cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Thu, 15 Nov 2018 22:45:06 GMT
ADD file:dab9baf938799c515ddce14c02f899da5992f0b76a432fa10a2338556a3cb04f in / 
# Thu, 15 Nov 2018 22:45:07 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 01:11:01 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Fri, 16 Nov 2018 01:11:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:11 GMT
ENV GOSU_VERSION=1.7
# Fri, 16 Nov 2018 01:11:33 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 16 Nov 2018 01:11:34 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 16 Nov 2018 01:11:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 01:11:49 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 16 Nov 2018 01:11:50 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Fri, 16 Nov 2018 01:11:51 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 16 Nov 2018 01:12:21 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 16 Nov 2018 01:12:22 GMT
VOLUME [/var/lib/mysql]
# Fri, 16 Nov 2018 01:12:22 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 16 Nov 2018 01:12:23 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Fri, 16 Nov 2018 01:12:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 16 Nov 2018 01:12:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 16 Nov 2018 01:12:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Fri, 16 Nov 2018 01:12:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:a5a6f2f73cd8abbdc55d0df0d8834f7262713e87d6c8800ea3851f103025e0f0`  
		Last Modified: Thu, 15 Nov 2018 23:12:57 GMT  
		Size: 22.5 MB (22486277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936836019e67889c1f5a95732c62c476d2450010988792e99d6e7ece84fdce2f`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 1.7 KB (1747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:283fa4c95fb4e349b501ef8c864b2259500d83ca6529253da12d658aa480cbb5`  
		Last Modified: Fri, 16 Nov 2018 01:21:40 GMT  
		Size: 4.5 MB (4500948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f212fb371f936c524c624e6830242a8cb91b3b710942f9241004dae45828f87`  
		Last Modified: Fri, 16 Nov 2018 01:21:39 GMT  
		Size: 1.3 MB (1270313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2ae0d063e89542abdd8abd1613e8e27743fa669f4a418c8b0a813991621d892`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ed0ae805b65407ddd0ff1aeb8371de3133e5daed97726717d4225cb7a8efaaa`  
		Last Modified: Fri, 16 Nov 2018 01:21:45 GMT  
		Size: 12.1 MB (12091270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0283dc49ef4e5bc0dc8897b14818de315faeceb0a5272464ff3c48cd4ea3b626`  
		Last Modified: Fri, 16 Nov 2018 01:21:38 GMT  
		Size: 24.0 KB (24045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e1170b4fdbbf66003cff54439d6e6e6ec4a0e80e4bb3ba418931c0ba372fc8`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88918a9e47424798171c98ac0955b01b8c05310eb1700824cbd7eb1651a9fa63`  
		Last Modified: Fri, 16 Nov 2018 01:22:08 GMT  
		Size: 97.9 MB (97926961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:241282fa67c22084bf92b5b906140a4626c450bd8b38f3d0636edccfedd22e77`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 894.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0fecf6192100ab3647085c3bdf33a75cfab3a5203873dd17981f7361f87f902`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bebf9f901dcc12370d2c5183f817884c2a3f7a776aa6f72b17fb736af8d5a9f5`  
		Last Modified: Fri, 16 Nov 2018 01:21:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
