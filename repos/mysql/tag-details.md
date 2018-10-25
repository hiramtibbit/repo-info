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
$ docker pull mysql@sha256:42bab37eda993e417c5e7d751f1008b653c3fd85ad6aa416a519f1616c27e4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:4c339d817020c348b5e7455678c4a1ceeeb881bd6c2de0b60e15e2fc41cbc183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123939938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702fb0b7837ffeb403e42a275a8f6e34ed097acbace55be0a40b32bb66cc8b01`
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
# Wed, 24 Oct 2018 22:26:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Wed, 24 Oct 2018 22:26:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:55 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 24 Oct 2018 22:27:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:27:32 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:27:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:27:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:27:33 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:27:34 GMT
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
	-	`sha256:b8edeb9ec9e22e2b88f367941396a1db89389ccdfa76a582f038a5bd5387a8e1`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5adb9b92bf9ab450830f826c9572e8aa0fb1cb4edd7407c428c93900e15f2a`  
		Last Modified: Wed, 24 Oct 2018 22:32:14 GMT  
		Size: 83.6 MB (83565231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5358eb71259b0e5444aabb04df0452cff4cf94b1cf7b89877e7248cafd32e7bc`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 2.9 KB (2880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d149f0c48f34b71fbd6fea489c0b7434453e3f37164908f0137ed20c6dab67`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:23ac883537215ca377b5176188ee61975bddb595d134ffd1af2f01498beb565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:b4800fb2056acc436d8d65a52342ba2d87d7204ebeec24bdd487f1418f78624e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66064677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27424d4dcd40de17675e8fc0bb428b058bb60a41486456ec9a192088483996f`
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
# Wed, 24 Oct 2018 22:28:17 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 24 Oct 2018 22:30:18 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 24 Oct 2018 22:30:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 24 Oct 2018 22:30:19 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 24 Oct 2018 22:30:19 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:30:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:30:20 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:30:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:30:21 GMT
EXPOSE 3306/tcp
# Wed, 24 Oct 2018 22:30:21 GMT
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
	-	`sha256:0b20fd1643038f1b7d38bc7cf5b19e7b8046ab5e6a0fe62b65efbbfc894bf9e0`  
		Last Modified: Wed, 24 Oct 2018 22:33:28 GMT  
		Size: 27.5 MB (27512883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b777e4c712672f0b306d18dd523ac6b71db27368ec8b10391e45252115f1fcd6`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c21436c7d49d5e3b7eba9ae4bf398fb57e11a6d3095bf93a43d56b96df852f`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d3b4925262059bf5680bbd3c24836960edbe8ea6e12dbc305edb3c6cc4e071`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbde4113e4da7d63fbdec3a06ff3a924103b2a4bff6b18d3a797b4a5b148938`  
		Last Modified: Wed, 24 Oct 2018 22:33:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:23ac883537215ca377b5176188ee61975bddb595d134ffd1af2f01498beb565b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:b4800fb2056acc436d8d65a52342ba2d87d7204ebeec24bdd487f1418f78624e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66064677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d27424d4dcd40de17675e8fc0bb428b058bb60a41486456ec9a192088483996f`
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
# Wed, 24 Oct 2018 22:28:17 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 24 Oct 2018 22:30:18 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 24 Oct 2018 22:30:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 24 Oct 2018 22:30:19 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 24 Oct 2018 22:30:19 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:30:20 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:30:20 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:30:21 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:30:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:30:21 GMT
EXPOSE 3306/tcp
# Wed, 24 Oct 2018 22:30:21 GMT
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
	-	`sha256:0b20fd1643038f1b7d38bc7cf5b19e7b8046ab5e6a0fe62b65efbbfc894bf9e0`  
		Last Modified: Wed, 24 Oct 2018 22:33:28 GMT  
		Size: 27.5 MB (27512883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b777e4c712672f0b306d18dd523ac6b71db27368ec8b10391e45252115f1fcd6`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8c21436c7d49d5e3b7eba9ae4bf398fb57e11a6d3095bf93a43d56b96df852f`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d3b4925262059bf5680bbd3c24836960edbe8ea6e12dbc305edb3c6cc4e071`  
		Last Modified: Wed, 24 Oct 2018 22:33:23 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cbde4113e4da7d63fbdec3a06ff3a924103b2a4bff6b18d3a797b4a5b148938`  
		Last Modified: Wed, 24 Oct 2018 22:33:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:b56c3109f09a90c045ebe991e085fcaab5008cd6dbb8ab5ad1d6101fc0f87fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:be1eecb61652ae323e68918aef26d1b0e7a6d973f3d3155a2ab233c7fb4b3447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82687878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46c2a2722b9883f0b2e4c027a31c28c2528af60435c05c0f9200a7c73196b84`
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
# Wed, 24 Oct 2018 22:27:46 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Wed, 24 Oct 2018 22:27:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:28:02 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 24 Oct 2018 22:28:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:28:03 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:28:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:28:04 GMT
EXPOSE 3306/tcp
# Wed, 24 Oct 2018 22:28:05 GMT
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
	-	`sha256:e9bb65297d95f3fb211801da323efd689a46fdb56a46ee1200e8d55749f914ef`  
		Last Modified: Wed, 24 Oct 2018 22:32:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7c8492496e2fef1a50ad1bb7d92fd4463cb0664aebd4557a409afcd3583fa2`  
		Last Modified: Wed, 24 Oct 2018 22:32:58 GMT  
		Size: 44.2 MB (44235452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af69434adbe00dcdd58fa002448d7117e0a4ff4f9e231051e63c6b9f677ea3f`  
		Last Modified: Wed, 24 Oct 2018 22:32:50 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bc8b20381b394347f098a222b46046358e89ce51dc79ba499c52ed2a222777`  
		Last Modified: Wed, 24 Oct 2018 22:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.42`

```console
$ docker pull mysql@sha256:b56c3109f09a90c045ebe991e085fcaab5008cd6dbb8ab5ad1d6101fc0f87fcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.42` - linux; amd64

```console
$ docker pull mysql@sha256:be1eecb61652ae323e68918aef26d1b0e7a6d973f3d3155a2ab233c7fb4b3447
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82687878 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a46c2a2722b9883f0b2e4c027a31c28c2528af60435c05c0f9200a7c73196b84`
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
# Wed, 24 Oct 2018 22:27:46 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Wed, 24 Oct 2018 22:27:46 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:28:02 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 24 Oct 2018 22:28:03 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:28:03 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:28:04 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:28:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:28:04 GMT
EXPOSE 3306/tcp
# Wed, 24 Oct 2018 22:28:05 GMT
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
	-	`sha256:e9bb65297d95f3fb211801da323efd689a46fdb56a46ee1200e8d55749f914ef`  
		Last Modified: Wed, 24 Oct 2018 22:32:49 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a7c8492496e2fef1a50ad1bb7d92fd4463cb0664aebd4557a409afcd3583fa2`  
		Last Modified: Wed, 24 Oct 2018 22:32:58 GMT  
		Size: 44.2 MB (44235452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af69434adbe00dcdd58fa002448d7117e0a4ff4f9e231051e63c6b9f677ea3f`  
		Last Modified: Wed, 24 Oct 2018 22:32:50 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54bc8b20381b394347f098a222b46046358e89ce51dc79ba499c52ed2a222777`  
		Last Modified: Wed, 24 Oct 2018 22:32:50 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:42bab37eda993e417c5e7d751f1008b653c3fd85ad6aa416a519f1616c27e4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:4c339d817020c348b5e7455678c4a1ceeeb881bd6c2de0b60e15e2fc41cbc183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123939938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702fb0b7837ffeb403e42a275a8f6e34ed097acbace55be0a40b32bb66cc8b01`
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
# Wed, 24 Oct 2018 22:26:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Wed, 24 Oct 2018 22:26:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:55 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 24 Oct 2018 22:27:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:27:32 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:27:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:27:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:27:33 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:27:34 GMT
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
	-	`sha256:b8edeb9ec9e22e2b88f367941396a1db89389ccdfa76a582f038a5bd5387a8e1`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5adb9b92bf9ab450830f826c9572e8aa0fb1cb4edd7407c428c93900e15f2a`  
		Last Modified: Wed, 24 Oct 2018 22:32:14 GMT  
		Size: 83.6 MB (83565231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5358eb71259b0e5444aabb04df0452cff4cf94b1cf7b89877e7248cafd32e7bc`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 2.9 KB (2880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d149f0c48f34b71fbd6fea489c0b7434453e3f37164908f0137ed20c6dab67`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.24`

```console
$ docker pull mysql@sha256:42bab37eda993e417c5e7d751f1008b653c3fd85ad6aa416a519f1616c27e4a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.24` - linux; amd64

```console
$ docker pull mysql@sha256:4c339d817020c348b5e7455678c4a1ceeeb881bd6c2de0b60e15e2fc41cbc183
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123939938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:702fb0b7837ffeb403e42a275a8f6e34ed097acbace55be0a40b32bb66cc8b01`
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
# Wed, 24 Oct 2018 22:26:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Wed, 24 Oct 2018 22:26:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:55 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 24 Oct 2018 22:27:32 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:27:32 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:27:33 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:27:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:27:33 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:27:34 GMT
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
	-	`sha256:b8edeb9ec9e22e2b88f367941396a1db89389ccdfa76a582f038a5bd5387a8e1`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b5adb9b92bf9ab450830f826c9572e8aa0fb1cb4edd7407c428c93900e15f2a`  
		Last Modified: Wed, 24 Oct 2018 22:32:14 GMT  
		Size: 83.6 MB (83565231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5358eb71259b0e5444aabb04df0452cff4cf94b1cf7b89877e7248cafd32e7bc`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 2.9 KB (2880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8d149f0c48f34b71fbd6fea489c0b7434453e3f37164908f0137ed20c6dab67`  
		Last Modified: Wed, 24 Oct 2018 22:31:59 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:811483efcd38de17d93193b4b4bc4ba290a931215c4c8512cbff624e5967a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:2b0e9b0e40202e2a6a0619f327c9acb9d0adc39d7dc292fefc1a886fc8cefee3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138302512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd01afbe8df1fe326f6609c56b08beefc6bf254d28993263da188b8fbf1254d`
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
# Wed, 24 Oct 2018 22:25:56 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Wed, 24 Oct 2018 22:25:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:26:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:26:23 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 24 Oct 2018 22:26:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:26:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:26:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:26:25 GMT
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
	-	`sha256:720bf9851f6a1bf46184713a88776e56bdb2da94c5727760a78911dc02a2bfff`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933e0a4fddf75e710c007b4413aa1a1ca5ec39dc0b64f86d5d655bfc23d70a1`  
		Last Modified: Wed, 24 Oct 2018 22:31:00 GMT  
		Size: 97.9 MB (97926838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffdbf5f677f31455ab41d89d949efc11080b86e4f07ad5b0a12c40a347021ff`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a403e1df0389891e56604e5665a0fc31f30bfa295cd43b67053b14e7810ce51c`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669c5f285a6fddbc45ed2c69753e23a6a9cbf3bd711b1ac2d83c0e8dbbf15bf`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:811483efcd38de17d93193b4b4bc4ba290a931215c4c8512cbff624e5967a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:2b0e9b0e40202e2a6a0619f327c9acb9d0adc39d7dc292fefc1a886fc8cefee3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138302512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd01afbe8df1fe326f6609c56b08beefc6bf254d28993263da188b8fbf1254d`
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
# Wed, 24 Oct 2018 22:25:56 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Wed, 24 Oct 2018 22:25:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:26:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:26:23 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 24 Oct 2018 22:26:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:26:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:26:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:26:25 GMT
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
	-	`sha256:720bf9851f6a1bf46184713a88776e56bdb2da94c5727760a78911dc02a2bfff`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933e0a4fddf75e710c007b4413aa1a1ca5ec39dc0b64f86d5d655bfc23d70a1`  
		Last Modified: Wed, 24 Oct 2018 22:31:00 GMT  
		Size: 97.9 MB (97926838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffdbf5f677f31455ab41d89d949efc11080b86e4f07ad5b0a12c40a347021ff`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a403e1df0389891e56604e5665a0fc31f30bfa295cd43b67053b14e7810ce51c`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669c5f285a6fddbc45ed2c69753e23a6a9cbf3bd711b1ac2d83c0e8dbbf15bf`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.13`

```console
$ docker pull mysql@sha256:811483efcd38de17d93193b4b4bc4ba290a931215c4c8512cbff624e5967a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.13` - linux; amd64

```console
$ docker pull mysql@sha256:2b0e9b0e40202e2a6a0619f327c9acb9d0adc39d7dc292fefc1a886fc8cefee3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138302512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd01afbe8df1fe326f6609c56b08beefc6bf254d28993263da188b8fbf1254d`
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
# Wed, 24 Oct 2018 22:25:56 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Wed, 24 Oct 2018 22:25:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:26:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:26:23 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 24 Oct 2018 22:26:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:26:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:26:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:26:25 GMT
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
	-	`sha256:720bf9851f6a1bf46184713a88776e56bdb2da94c5727760a78911dc02a2bfff`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933e0a4fddf75e710c007b4413aa1a1ca5ec39dc0b64f86d5d655bfc23d70a1`  
		Last Modified: Wed, 24 Oct 2018 22:31:00 GMT  
		Size: 97.9 MB (97926838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffdbf5f677f31455ab41d89d949efc11080b86e4f07ad5b0a12c40a347021ff`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a403e1df0389891e56604e5665a0fc31f30bfa295cd43b67053b14e7810ce51c`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669c5f285a6fddbc45ed2c69753e23a6a9cbf3bd711b1ac2d83c0e8dbbf15bf`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:811483efcd38de17d93193b4b4bc4ba290a931215c4c8512cbff624e5967a7dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:2b0e9b0e40202e2a6a0619f327c9acb9d0adc39d7dc292fefc1a886fc8cefee3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138302512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dd01afbe8df1fe326f6609c56b08beefc6bf254d28993263da188b8fbf1254d`
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
# Wed, 24 Oct 2018 22:25:56 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Wed, 24 Oct 2018 22:25:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 24 Oct 2018 22:26:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 24 Oct 2018 22:26:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 24 Oct 2018 22:26:23 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 24 Oct 2018 22:26:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 24 Oct 2018 22:26:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 24 Oct 2018 22:26:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 24 Oct 2018 22:26:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 24 Oct 2018 22:26:25 GMT
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
	-	`sha256:720bf9851f6a1bf46184713a88776e56bdb2da94c5727760a78911dc02a2bfff`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e933e0a4fddf75e710c007b4413aa1a1ca5ec39dc0b64f86d5d655bfc23d70a1`  
		Last Modified: Wed, 24 Oct 2018 22:31:00 GMT  
		Size: 97.9 MB (97926838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffdbf5f677f31455ab41d89d949efc11080b86e4f07ad5b0a12c40a347021ff`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a403e1df0389891e56604e5665a0fc31f30bfa295cd43b67053b14e7810ce51c`  
		Last Modified: Wed, 24 Oct 2018 22:30:40 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4669c5f285a6fddbc45ed2c69753e23a6a9cbf3bd711b1ac2d83c0e8dbbf15bf`  
		Last Modified: Wed, 24 Oct 2018 22:30:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
