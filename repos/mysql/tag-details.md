<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.61`](#mysql5561)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.41`](#mysql5641)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.23`](#mysql5723)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.12`](#mysql8012)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:953b53af26805d82eca95f28df6ae82e8e15cd1e587b4c5cd06a78be80e84050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:f1ac5ad24f984c64e2d6a39b7a4d5027044928ebd475fdec404d541608e610b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b30b36ae96ace2d29cd9c7a724cbb9d1ce59424a79cad4d117175d273d1689b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:02:23 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 16 Oct 2018 07:02:24 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 16 Oct 2018 07:02:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:02:53 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 07:02:54 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:02:54 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:55 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5ba503457fbd0e92696938ec6934f9e987bf8ab09654bce27af90a400e07`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7081a7f092423e688e4b40610c6d1b2acb77a9aa49c7f27f69906ad3be1918`  
		Last Modified: Tue, 16 Oct 2018 07:07:51 GMT  
		Size: 83.5 MB (83505953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bb21de7ef9596d43c89beb6b40decc88c89d1ecb2a35dc86d0abd01af725e2`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56064f7c9c1b9c58ba942b40916ec9bad3b86304bc292563ed1cd329f6b07c38`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:7ed63104d3a371cbdff0f31b757137aca096788c7c7fb26546142bb8bdac8d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:5101577b035798685e60fa48c83a4ba6b65f876fbae90550e767307b639d7e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d306c8812ec39d501c5617f4fabee6faac830b812c8331da49d2ae77968f746b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:04:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:04:15 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 16 Oct 2018 07:04:15 GMT
ENV MYSQL_VERSION=5.5.61
# Tue, 16 Oct 2018 07:06:13 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 16 Oct 2018 07:06:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 16 Oct 2018 07:06:20 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 16 Oct 2018 07:06:20 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:06:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:06:21 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:06:22 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 07:06:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944465c7b0cdb658153a8d4cf877b69d995e3866c9fedad34811b57f188975e8`  
		Last Modified: Tue, 16 Oct 2018 07:09:05 GMT  
		Size: 10.3 MB (10291692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a25a28317e7de49a25ece4df16e3a7b7640019c08f5cd3807b130c00f558b5`  
		Last Modified: Tue, 16 Oct 2018 07:09:05 GMT  
		Size: 27.5 MB (27476713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5482776fe62c2b2046f0198dcfdf0c35377b74fa1e9b240d43a4b3f46d6691`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006a97e37083b6fb138a06aec8a733d8e5bda1b7ed4bc0cb7cd80cdac480fc5d`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17d858404460f8132ca07c013248a2f160e2b96d7e55a9c33217c7793cf242d`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 2.9 KB (2882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5e237bbc3285e054a7533d4d4308be2e552a1c1d1be9a9dd024b24727fb362`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.61`

```console
$ docker pull mysql@sha256:7ed63104d3a371cbdff0f31b757137aca096788c7c7fb26546142bb8bdac8d5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.61` - linux; amd64

```console
$ docker pull mysql@sha256:5101577b035798685e60fa48c83a4ba6b65f876fbae90550e767307b639d7e98
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d306c8812ec39d501c5617f4fabee6faac830b812c8331da49d2ae77968f746b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:04:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:04:15 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 16 Oct 2018 07:04:15 GMT
ENV MYSQL_VERSION=5.5.61
# Tue, 16 Oct 2018 07:06:13 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 16 Oct 2018 07:06:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 16 Oct 2018 07:06:20 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 16 Oct 2018 07:06:20 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:06:21 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:06:21 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:06:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:06:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:06:22 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 07:06:22 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944465c7b0cdb658153a8d4cf877b69d995e3866c9fedad34811b57f188975e8`  
		Last Modified: Tue, 16 Oct 2018 07:09:05 GMT  
		Size: 10.3 MB (10291692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41a25a28317e7de49a25ece4df16e3a7b7640019c08f5cd3807b130c00f558b5`  
		Last Modified: Tue, 16 Oct 2018 07:09:05 GMT  
		Size: 27.5 MB (27476713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec5482776fe62c2b2046f0198dcfdf0c35377b74fa1e9b240d43a4b3f46d6691`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006a97e37083b6fb138a06aec8a733d8e5bda1b7ed4bc0cb7cd80cdac480fc5d`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b17d858404460f8132ca07c013248a2f160e2b96d7e55a9c33217c7793cf242d`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 2.9 KB (2882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c5e237bbc3285e054a7533d4d4308be2e552a1c1d1be9a9dd024b24727fb362`  
		Last Modified: Tue, 16 Oct 2018 07:08:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:0ae5d57a7b349384bb46bc7f6b73c21d2806b02bbb99554684e78b700094ab62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:dec0d3397d170f3e23d3a7d4d64925d40c2e1e0b97dd097eb08e29765b90ef79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b9b6ec8a9892e76a31bbd3d6c373de8ba6f29f5db57db78d43c523ffef3af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:03:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:03:31 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:03:36 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 16 Oct 2018 07:03:37 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Tue, 16 Oct 2018 07:03:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:03:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 07:03:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:03:59 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:03:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:04:00 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 07:04:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c3b745cc6f9f611078e94716ca2ddcdf08ab99689083bd3d4d71b8dee87d5`  
		Last Modified: Tue, 16 Oct 2018 07:08:34 GMT  
		Size: 10.2 MB (10169046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ebcbee59b15e86e2a68adb0310b61943cd4d6534214e0f43459a30ae8b5b23`  
		Last Modified: Tue, 16 Oct 2018 07:08:28 GMT  
		Size: 23.5 KB (23494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07692414bc14b9ff2a52315ce94902a67a42dffc19c02f3ef80bd59d5827a0b`  
		Last Modified: Tue, 16 Oct 2018 07:08:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34369684f4e6b7ad05f333f0439d40bba919429afd1d815c5a95ee12ba3859`  
		Last Modified: Tue, 16 Oct 2018 07:08:39 GMT  
		Size: 44.2 MB (44214484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15fa1d9de52b4bee1b11e12ee291add6e91415f68b4ed7ab003e38b511540`  
		Last Modified: Tue, 16 Oct 2018 07:08:29 GMT  
		Size: 2.9 KB (2857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db940c78ebb4b25ec6d3ddeffd3e9bcc2c09d8c93eebc48b73fef12d60083161`  
		Last Modified: Tue, 16 Oct 2018 07:08:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.41`

```console
$ docker pull mysql@sha256:0ae5d57a7b349384bb46bc7f6b73c21d2806b02bbb99554684e78b700094ab62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.41` - linux; amd64

```console
$ docker pull mysql@sha256:dec0d3397d170f3e23d3a7d4d64925d40c2e1e0b97dd097eb08e29765b90ef79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:085b9b6ec8a9892e76a31bbd3d6c373de8ba6f29f5db57db78d43c523ffef3af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:03:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:03:31 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:03:36 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 16 Oct 2018 07:03:37 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Tue, 16 Oct 2018 07:03:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:03:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 07:03:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:03:59 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:03:59 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:04:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:04:00 GMT
EXPOSE 3306/tcp
# Tue, 16 Oct 2018 07:04:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b79c3b745cc6f9f611078e94716ca2ddcdf08ab99689083bd3d4d71b8dee87d5`  
		Last Modified: Tue, 16 Oct 2018 07:08:34 GMT  
		Size: 10.2 MB (10169046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6ebcbee59b15e86e2a68adb0310b61943cd4d6534214e0f43459a30ae8b5b23`  
		Last Modified: Tue, 16 Oct 2018 07:08:28 GMT  
		Size: 23.5 KB (23494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f07692414bc14b9ff2a52315ce94902a67a42dffc19c02f3ef80bd59d5827a0b`  
		Last Modified: Tue, 16 Oct 2018 07:08:28 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d34369684f4e6b7ad05f333f0439d40bba919429afd1d815c5a95ee12ba3859`  
		Last Modified: Tue, 16 Oct 2018 07:08:39 GMT  
		Size: 44.2 MB (44214484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6c15fa1d9de52b4bee1b11e12ee291add6e91415f68b4ed7ab003e38b511540`  
		Last Modified: Tue, 16 Oct 2018 07:08:29 GMT  
		Size: 2.9 KB (2857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db940c78ebb4b25ec6d3ddeffd3e9bcc2c09d8c93eebc48b73fef12d60083161`  
		Last Modified: Tue, 16 Oct 2018 07:08:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:953b53af26805d82eca95f28df6ae82e8e15cd1e587b4c5cd06a78be80e84050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:f1ac5ad24f984c64e2d6a39b7a4d5027044928ebd475fdec404d541608e610b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b30b36ae96ace2d29cd9c7a724cbb9d1ce59424a79cad4d117175d273d1689b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:02:23 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 16 Oct 2018 07:02:24 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 16 Oct 2018 07:02:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:02:53 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 07:02:54 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:02:54 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:55 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5ba503457fbd0e92696938ec6934f9e987bf8ab09654bce27af90a400e07`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7081a7f092423e688e4b40610c6d1b2acb77a9aa49c7f27f69906ad3be1918`  
		Last Modified: Tue, 16 Oct 2018 07:07:51 GMT  
		Size: 83.5 MB (83505953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bb21de7ef9596d43c89beb6b40decc88c89d1ecb2a35dc86d0abd01af725e2`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56064f7c9c1b9c58ba942b40916ec9bad3b86304bc292563ed1cd329f6b07c38`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.23`

```console
$ docker pull mysql@sha256:953b53af26805d82eca95f28df6ae82e8e15cd1e587b4c5cd06a78be80e84050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.23` - linux; amd64

```console
$ docker pull mysql@sha256:f1ac5ad24f984c64e2d6a39b7a4d5027044928ebd475fdec404d541608e610b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b30b36ae96ace2d29cd9c7a724cbb9d1ce59424a79cad4d117175d273d1689b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:02:23 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 16 Oct 2018 07:02:24 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 16 Oct 2018 07:02:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:02:53 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 16 Oct 2018 07:02:54 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:02:54 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:55 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:55 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:006c5ba503457fbd0e92696938ec6934f9e987bf8ab09654bce27af90a400e07`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7081a7f092423e688e4b40610c6d1b2acb77a9aa49c7f27f69906ad3be1918`  
		Last Modified: Tue, 16 Oct 2018 07:07:51 GMT  
		Size: 83.5 MB (83505953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46bb21de7ef9596d43c89beb6b40decc88c89d1ecb2a35dc86d0abd01af725e2`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56064f7c9c1b9c58ba942b40916ec9bad3b86304bc292563ed1cd329f6b07c38`  
		Last Modified: Tue, 16 Oct 2018 07:07:36 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:8fdc47e9ccb8112a62148032ae70484e3453b628ab6fe02bccf159e2966b750e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:574bf8a61e3276788bcaa9a9e226977ea3037f439295e2a07b624b8aaebd66d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1e8adfcefbc1dadf8bc01350b6b6ba9c6925d45e02371edf56e13b780f0e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 16 Oct 2018 07:01:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:01:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:01:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:01:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 16 Oct 2018 07:01:59 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:00 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739800af3a9f787d888248512eee5be9282e3f9c9b7117fa77b840e2d62f5af1`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbc995daddd6a1b7c27500ba78e47a5b3120d7406b656205c74e13f862561c8`  
		Last Modified: Tue, 16 Oct 2018 07:06:58 GMT  
		Size: 97.3 MB (97329063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c83b9b9acdd22ff23b558888bd498f19110bcd007babffb6e52c8993fd11`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb56d3f0a7e59420f073d97ebe9ba327d71434c1b22c8bb37fc26cf567f2aaa`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d4de73cac434820c021024bbbd666389397ad0ce21e8bd8bbdb292ccaadbc`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:8fdc47e9ccb8112a62148032ae70484e3453b628ab6fe02bccf159e2966b750e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:574bf8a61e3276788bcaa9a9e226977ea3037f439295e2a07b624b8aaebd66d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1e8adfcefbc1dadf8bc01350b6b6ba9c6925d45e02371edf56e13b780f0e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 16 Oct 2018 07:01:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:01:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:01:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:01:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 16 Oct 2018 07:01:59 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:00 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739800af3a9f787d888248512eee5be9282e3f9c9b7117fa77b840e2d62f5af1`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbc995daddd6a1b7c27500ba78e47a5b3120d7406b656205c74e13f862561c8`  
		Last Modified: Tue, 16 Oct 2018 07:06:58 GMT  
		Size: 97.3 MB (97329063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c83b9b9acdd22ff23b558888bd498f19110bcd007babffb6e52c8993fd11`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb56d3f0a7e59420f073d97ebe9ba327d71434c1b22c8bb37fc26cf567f2aaa`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d4de73cac434820c021024bbbd666389397ad0ce21e8bd8bbdb292ccaadbc`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.12`

```console
$ docker pull mysql@sha256:8fdc47e9ccb8112a62148032ae70484e3453b628ab6fe02bccf159e2966b750e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.12` - linux; amd64

```console
$ docker pull mysql@sha256:574bf8a61e3276788bcaa9a9e226977ea3037f439295e2a07b624b8aaebd66d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1e8adfcefbc1dadf8bc01350b6b6ba9c6925d45e02371edf56e13b780f0e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 16 Oct 2018 07:01:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:01:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:01:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:01:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 16 Oct 2018 07:01:59 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:00 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739800af3a9f787d888248512eee5be9282e3f9c9b7117fa77b840e2d62f5af1`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbc995daddd6a1b7c27500ba78e47a5b3120d7406b656205c74e13f862561c8`  
		Last Modified: Tue, 16 Oct 2018 07:06:58 GMT  
		Size: 97.3 MB (97329063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c83b9b9acdd22ff23b558888bd498f19110bcd007babffb6e52c8993fd11`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb56d3f0a7e59420f073d97ebe9ba327d71434c1b22c8bb37fc26cf567f2aaa`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d4de73cac434820c021024bbbd666389397ad0ce21e8bd8bbdb292ccaadbc`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:8fdc47e9ccb8112a62148032ae70484e3453b628ab6fe02bccf159e2966b750e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:574bf8a61e3276788bcaa9a9e226977ea3037f439295e2a07b624b8aaebd66d4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1e8adfcefbc1dadf8bc01350b6b6ba9c6925d45e02371edf56e13b780f0e5a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:48 GMT
ADD file:f8f26d117bc4a9289b7cd7447ca36e1a70b11701c63d949ef35ff9c16e190e50 in / 
# Mon, 15 Oct 2018 23:24:48 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 07:00:36 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 16 Oct 2018 07:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:00:49 GMT
ENV GOSU_VERSION=1.7
# Tue, 16 Oct 2018 07:01:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 16 Oct 2018 07:01:04 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 16 Oct 2018 07:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:01:23 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 16 Oct 2018 07:01:28 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 16 Oct 2018 07:01:29 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 16 Oct 2018 07:01:58 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 16 Oct 2018 07:01:58 GMT
VOLUME [/var/lib/mysql]
# Tue, 16 Oct 2018 07:01:59 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 16 Oct 2018 07:01:59 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Tue, 16 Oct 2018 07:02:00 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 16 Oct 2018 07:02:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 16 Oct 2018 07:02:00 GMT
EXPOSE 3306/tcp 33060/tcp
# Tue, 16 Oct 2018 07:02:00 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f17d81b4b692f7e0d6c1176c86b81d9f2cb5ac5349703adca51c61debcfe413c`  
		Last Modified: Mon, 15 Oct 2018 23:34:41 GMT  
		Size: 22.5 MB (22486039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c691115e6ae99e3df31912e0296a2bf14749bc50d25b4b1b3fccae9127b6b04e`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.7 KB (1746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41544cb1923547731ed8a803ccc44cba5fda606fac89585387a85b5533240b41`  
		Last Modified: Tue, 16 Oct 2018 07:06:40 GMT  
		Size: 4.5 MB (4498516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:254d04f5f66d2b471258f0645c7c983f8cd37d1fdbf02e9b2534eae48bd77c2f`  
		Last Modified: Tue, 16 Oct 2018 07:06:39 GMT  
		Size: 1.3 MB (1270267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fe240edfdc9fac9386437802f9522dce9e474f9310bd4c109e2fd455207fe48`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd4fcc94b67e5cb256fe4f3b2826ad9bf34104ee479a4c007aa83cfbaab356c`  
		Last Modified: Tue, 16 Oct 2018 07:06:42 GMT  
		Size: 12.1 MB (12091306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8df36ec4b34a4406e163a8711a34ea6a628fd4dca62230b9304d9bd65545948a`  
		Last Modified: Tue, 16 Oct 2018 07:06:38 GMT  
		Size: 23.5 KB (23493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:739800af3a9f787d888248512eee5be9282e3f9c9b7117fa77b840e2d62f5af1`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cbc995daddd6a1b7c27500ba78e47a5b3120d7406b656205c74e13f862561c8`  
		Last Modified: Tue, 16 Oct 2018 07:06:58 GMT  
		Size: 97.3 MB (97329063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db5c83b9b9acdd22ff23b558888bd498f19110bcd007babffb6e52c8993fd11`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb56d3f0a7e59420f073d97ebe9ba327d71434c1b22c8bb37fc26cf567f2aaa`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:448d4de73cac434820c021024bbbd666389397ad0ce21e8bd8bbdb292ccaadbc`  
		Last Modified: Tue, 16 Oct 2018 07:06:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
