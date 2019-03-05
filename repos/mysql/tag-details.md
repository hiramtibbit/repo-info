<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.62`](#mysql5562)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.43`](#mysql5643)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.25`](#mysql5725)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.15`](#mysql8015)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:de482b2b0fdbe5bb142462c07c5650a74e0daa31e501bc52448a2be10f384e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:0143f8b4fbd2dfd94839758ca9ac2cd5b90ff6de7e89d185a45897b92b7be357
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123897446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7cbd482336a1f49b7038527a547f0f25b23a78d46350845e70a1cf7e5a22af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Tue, 05 Mar 2019 03:31:06 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:31:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 05 Mar 2019 03:31:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:31:30 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:31:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:31:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:31:33 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:31:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e462ad61e29f1650eb7d581185d2f098034813f26b2ad012d2f4fa7303e26b`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa594cb5b94deb4ada813478a6bba57d044971ef4df29eaf480f0a7af0368717`  
		Last Modified: Tue, 05 Mar 2019 03:35:19 GMT  
		Size: 83.5 MB (83490400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b44278270ad763a64906d2bebc7a67ee2e54a157b79989774ff19fd3d857380`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb3c323f55dc9812f832973c9e78263a74dddf0d216e7e4abd2a8843419831`  
		Last Modified: Tue, 05 Mar 2019 03:35:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:227e2c562e5371c28b2d4fde91dec40fc77b10a6e3c48a85974f8e1015691cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:2674d4c370a0911864f096140ac0a2187b78878e5b287169877dd81d1515ee6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66079161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a1fbbc9c44cab06202b690fe2b89cad7c7396c78344db0d9350a2bee3a86b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:32:26 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 05 Mar 2019 03:32:26 GMT
ENV MYSQL_VERSION=5.5.62
# Tue, 05 Mar 2019 03:34:21 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 05 Mar 2019 03:34:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 05 Mar 2019 03:34:22 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 05 Mar 2019 03:34:23 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:34:24 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:34:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:34:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:34:25 GMT
EXPOSE 3306
# Tue, 05 Mar 2019 03:34:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eef396af536daf11e73b227967d36c96eba979d44b2307de1dd0c6d2182d0ae`  
		Last Modified: Tue, 05 Mar 2019 03:35:41 GMT  
		Size: 10.3 MB (10293386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a42fff6d03ed6ed275b21383d181320789be337cc1e7a8fbcfdd60dec339d`  
		Last Modified: Tue, 05 Mar 2019 03:35:43 GMT  
		Size: 27.5 MB (27512923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e00dbdae4d2b7c49f2bcfcf59c9685028c9fc4bdca7723f8a5e6e0c6d4eddca`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afe30690857cc2244d4c5998f48ad8fba0207eaf89a076560d51ab9e61b30a7`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341a28f98c744fc8e86161f2196a08b88eaffcde564262d9b847cde89d2a0b32`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7444fceaf8a3df785f080468a8ff669c71bef678cd48259818e5912b4239ac`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:227e2c562e5371c28b2d4fde91dec40fc77b10a6e3c48a85974f8e1015691cdd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:2674d4c370a0911864f096140ac0a2187b78878e5b287169877dd81d1515ee6a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66079161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49a1fbbc9c44cab06202b690fe2b89cad7c7396c78344db0d9350a2bee3a86b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:32:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:32:26 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 05 Mar 2019 03:32:26 GMT
ENV MYSQL_VERSION=5.5.62
# Tue, 05 Mar 2019 03:34:21 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 05 Mar 2019 03:34:22 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 05 Mar 2019 03:34:22 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 05 Mar 2019 03:34:23 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:34:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:34:24 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:34:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:34:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:34:25 GMT
EXPOSE 3306
# Tue, 05 Mar 2019 03:34:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1eef396af536daf11e73b227967d36c96eba979d44b2307de1dd0c6d2182d0ae`  
		Last Modified: Tue, 05 Mar 2019 03:35:41 GMT  
		Size: 10.3 MB (10293386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:659a42fff6d03ed6ed275b21383d181320789be337cc1e7a8fbcfdd60dec339d`  
		Last Modified: Tue, 05 Mar 2019 03:35:43 GMT  
		Size: 27.5 MB (27512923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e00dbdae4d2b7c49f2bcfcf59c9685028c9fc4bdca7723f8a5e6e0c6d4eddca`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1afe30690857cc2244d4c5998f48ad8fba0207eaf89a076560d51ab9e61b30a7`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341a28f98c744fc8e86161f2196a08b88eaffcde564262d9b847cde89d2a0b32`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 2.9 KB (2883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7444fceaf8a3df785f080468a8ff669c71bef678cd48259818e5912b4239ac`  
		Last Modified: Tue, 05 Mar 2019 03:35:38 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:36cad5daaae69fbcc15dd33b9f25f35c41bbe7e06cb7df5e14d8b966fb26c1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:e087518e4c76001ffd2e61fc46a8dcd8ba79bb2fc17e0bb2f50dcabe2d4f1300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82701845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69056560eb44be4ed0b2c7138056288a84b7e702be4d088224e99a354d2f5a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:31:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:31:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:31:52 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 05 Mar 2019 03:31:53 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Tue, 05 Mar 2019 03:31:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:32:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 05 Mar 2019 03:32:12 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:32:12 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:32:15 GMT
EXPOSE 3306
# Tue, 05 Mar 2019 03:32:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7493809599fd43a9f1014b4aae47adf4d046e3bb54b8b5385d89afccc585021`  
		Last Modified: Tue, 05 Mar 2019 03:35:28 GMT  
		Size: 10.2 MB (10168826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72fa203c2bbb607a3056b947583ee1619af7a20e42ada34d7a0804fc633b39`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 26.1 KB (26081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5e4487a943cbaca0f21ccc400c67b18f127625956d272dc37e805e599943f`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165ca9a539aa44b080f51caf6b356bbe9c42d2f3de2d9d4ee309441445fd0566`  
		Last Modified: Tue, 05 Mar 2019 03:35:34 GMT  
		Size: 44.2 MB (44234300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81140eaaa67e77c27decc3ec977e05bc25709091ee6ca1189bca890251535ee0`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19021337b46f597bc47275bdce346c6b77768b7e3029b3124ded629285e3a393`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.43`

```console
$ docker pull mysql@sha256:36cad5daaae69fbcc15dd33b9f25f35c41bbe7e06cb7df5e14d8b966fb26c1b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.43` - linux; amd64

```console
$ docker pull mysql@sha256:e087518e4c76001ffd2e61fc46a8dcd8ba79bb2fc17e0bb2f50dcabe2d4f1300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82701845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69056560eb44be4ed0b2c7138056288a84b7e702be4d088224e99a354d2f5a74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:31:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:31:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:31:52 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 05 Mar 2019 03:31:53 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Tue, 05 Mar 2019 03:31:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:32:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 05 Mar 2019 03:32:12 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:32:12 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:32:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:32:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:32:15 GMT
EXPOSE 3306
# Tue, 05 Mar 2019 03:32:15 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7493809599fd43a9f1014b4aae47adf4d046e3bb54b8b5385d89afccc585021`  
		Last Modified: Tue, 05 Mar 2019 03:35:28 GMT  
		Size: 10.2 MB (10168826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e72fa203c2bbb607a3056b947583ee1619af7a20e42ada34d7a0804fc633b39`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 26.1 KB (26081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a5e4487a943cbaca0f21ccc400c67b18f127625956d272dc37e805e599943f`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165ca9a539aa44b080f51caf6b356bbe9c42d2f3de2d9d4ee309441445fd0566`  
		Last Modified: Tue, 05 Mar 2019 03:35:34 GMT  
		Size: 44.2 MB (44234300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81140eaaa67e77c27decc3ec977e05bc25709091ee6ca1189bca890251535ee0`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19021337b46f597bc47275bdce346c6b77768b7e3029b3124ded629285e3a393`  
		Last Modified: Tue, 05 Mar 2019 03:35:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:de482b2b0fdbe5bb142462c07c5650a74e0daa31e501bc52448a2be10f384e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:0143f8b4fbd2dfd94839758ca9ac2cd5b90ff6de7e89d185a45897b92b7be357
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123897446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7cbd482336a1f49b7038527a547f0f25b23a78d46350845e70a1cf7e5a22af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Tue, 05 Mar 2019 03:31:06 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:31:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 05 Mar 2019 03:31:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:31:30 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:31:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:31:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:31:33 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:31:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e462ad61e29f1650eb7d581185d2f098034813f26b2ad012d2f4fa7303e26b`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa594cb5b94deb4ada813478a6bba57d044971ef4df29eaf480f0a7af0368717`  
		Last Modified: Tue, 05 Mar 2019 03:35:19 GMT  
		Size: 83.5 MB (83490400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b44278270ad763a64906d2bebc7a67ee2e54a157b79989774ff19fd3d857380`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb3c323f55dc9812f832973c9e78263a74dddf0d216e7e4abd2a8843419831`  
		Last Modified: Tue, 05 Mar 2019 03:35:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.25`

```console
$ docker pull mysql@sha256:de482b2b0fdbe5bb142462c07c5650a74e0daa31e501bc52448a2be10f384e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.25` - linux; amd64

```console
$ docker pull mysql@sha256:0143f8b4fbd2dfd94839758ca9ac2cd5b90ff6de7e89d185a45897b92b7be357
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123897446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7cbd482336a1f49b7038527a547f0f25b23a78d46350845e70a1cf7e5a22af`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 05 Mar 2019 03:31:04 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Tue, 05 Mar 2019 03:31:06 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:31:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 05 Mar 2019 03:31:30 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:31:30 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:31:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:31:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:31:33 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:31:34 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07e462ad61e29f1650eb7d581185d2f098034813f26b2ad012d2f4fa7303e26b`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa594cb5b94deb4ada813478a6bba57d044971ef4df29eaf480f0a7af0368717`  
		Last Modified: Tue, 05 Mar 2019 03:35:19 GMT  
		Size: 83.5 MB (83490400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b44278270ad763a64906d2bebc7a67ee2e54a157b79989774ff19fd3d857380`  
		Last Modified: Tue, 05 Mar 2019 03:35:05 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3edb3c323f55dc9812f832973c9e78263a74dddf0d216e7e4abd2a8843419831`  
		Last Modified: Tue, 05 Mar 2019 03:35:06 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:4589ba2850b93d103e60011fe528fc56230516c1efb4d3494c33ff499505356f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:2fef62e658a5d9b4945d93e8e5d4a42d428c239991958fd237de1d6a207c0de6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136049108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dadee7afeebe274c51104d572ab6a2dc0ae97473f71afc57fbfd48c0ceb8aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Mar 2019 03:30:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:30:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:30:47 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:30:47 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Mar 2019 03:30:48 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:30:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:30:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:30:51 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:30:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bff56f688ad6be93121610551b0052a90af539e9b98ff2b2e5cd83a3ee943fb`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7900ad0eff9148ef48e306a17c6222665303a7bfc91697be94dcb7ec7c9dad6`  
		Last Modified: Tue, 05 Mar 2019 03:34:59 GMT  
		Size: 95.6 MB (95641093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa71cbd4ba74fa27d6c9e9251a58e70c15bafbae3a8273efc5bdb9045fdcf1`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d744b02cc8eb74866944985f2447c53fb330ce87af3e968ad29b3358cda5115`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b0db54e16c6ddc45d25745b605729ca01be2d81b19f111d2d32733522df1bc`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:4589ba2850b93d103e60011fe528fc56230516c1efb4d3494c33ff499505356f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:2fef62e658a5d9b4945d93e8e5d4a42d428c239991958fd237de1d6a207c0de6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136049108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dadee7afeebe274c51104d572ab6a2dc0ae97473f71afc57fbfd48c0ceb8aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Mar 2019 03:30:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:30:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:30:47 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:30:47 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Mar 2019 03:30:48 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:30:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:30:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:30:51 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:30:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bff56f688ad6be93121610551b0052a90af539e9b98ff2b2e5cd83a3ee943fb`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7900ad0eff9148ef48e306a17c6222665303a7bfc91697be94dcb7ec7c9dad6`  
		Last Modified: Tue, 05 Mar 2019 03:34:59 GMT  
		Size: 95.6 MB (95641093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa71cbd4ba74fa27d6c9e9251a58e70c15bafbae3a8273efc5bdb9045fdcf1`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d744b02cc8eb74866944985f2447c53fb330ce87af3e968ad29b3358cda5115`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b0db54e16c6ddc45d25745b605729ca01be2d81b19f111d2d32733522df1bc`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.15`

```console
$ docker pull mysql@sha256:4589ba2850b93d103e60011fe528fc56230516c1efb4d3494c33ff499505356f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.15` - linux; amd64

```console
$ docker pull mysql@sha256:2fef62e658a5d9b4945d93e8e5d4a42d428c239991958fd237de1d6a207c0de6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136049108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dadee7afeebe274c51104d572ab6a2dc0ae97473f71afc57fbfd48c0ceb8aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Mar 2019 03:30:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:30:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:30:47 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:30:47 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Mar 2019 03:30:48 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:30:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:30:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:30:51 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:30:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bff56f688ad6be93121610551b0052a90af539e9b98ff2b2e5cd83a3ee943fb`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7900ad0eff9148ef48e306a17c6222665303a7bfc91697be94dcb7ec7c9dad6`  
		Last Modified: Tue, 05 Mar 2019 03:34:59 GMT  
		Size: 95.6 MB (95641093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa71cbd4ba74fa27d6c9e9251a58e70c15bafbae3a8273efc5bdb9045fdcf1`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d744b02cc8eb74866944985f2447c53fb330ce87af3e968ad29b3358cda5115`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b0db54e16c6ddc45d25745b605729ca01be2d81b19f111d2d32733522df1bc`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:4589ba2850b93d103e60011fe528fc56230516c1efb4d3494c33ff499505356f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:2fef62e658a5d9b4945d93e8e5d4a42d428c239991958fd237de1d6a207c0de6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136049108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91dadee7afeebe274c51104d572ab6a2dc0ae97473f71afc57fbfd48c0ceb8aa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:21 GMT
ADD file:5ea7dfe8c8bc87ebe0d06d275bce41e015310bdfc04546246302e9ce07ee416c in / 
# Mon, 04 Mar 2019 23:22:22 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 03:29:51 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 05 Mar 2019 03:29:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:29:59 GMT
ENV GOSU_VERSION=1.7
# Tue, 05 Mar 2019 03:30:12 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 05 Mar 2019 03:30:14 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 05 Mar 2019 03:30:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:30:25 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Mar 2019 03:30:26 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Mar 2019 03:30:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Mar 2019 03:30:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Mar 2019 03:30:47 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Mar 2019 03:30:47 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Mar 2019 03:30:48 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Mar 2019 03:30:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Mar 2019 03:30:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Mar 2019 03:30:51 GMT
EXPOSE 3306 33060
# Tue, 05 Mar 2019 03:30:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:f7e2b70d04ae3f516c08c24d88de0f82699aaf3ee98af6eb208bd234136142b4`  
		Last Modified: Mon, 04 Mar 2019 23:26:28 GMT  
		Size: 22.5 MB (22496034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7f6307ff0a4de80759b9e6b9b5c641b5162e05f266c8f23901c9f2939e942f`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.7 KB (1744 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ed02b101347c5e0d6658c744ccc737d2abf2ef15e27bab4fa9228abcc3aee`  
		Last Modified: Tue, 05 Mar 2019 03:34:41 GMT  
		Size: 4.5 MB (4501177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cb929db392cd66fa8d0b5f4d8e916cf85042b7fac096e46cba1f8f5b3832c65`  
		Last Modified: Tue, 05 Mar 2019 03:34:40 GMT  
		Size: 1.3 MB (1270367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42cc77b242867361487763045d855f7344cff9607d8cd35bfff9c2ff1cb6f805`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6d57750cc73b742116721dbc95c4a00456defb161766e0d5e06c1265461ab27`  
		Last Modified: Tue, 05 Mar 2019 03:34:43 GMT  
		Size: 12.1 MB (12108307 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79510826e343db5aa317de1f2ee98d97e41fa97a7c8e20a88e1b02985ceb513b`  
		Last Modified: Tue, 05 Mar 2019 03:34:39 GMT  
		Size: 26.1 KB (26078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bff56f688ad6be93121610551b0052a90af539e9b98ff2b2e5cd83a3ee943fb`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7900ad0eff9148ef48e306a17c6222665303a7bfc91697be94dcb7ec7c9dad6`  
		Last Modified: Tue, 05 Mar 2019 03:34:59 GMT  
		Size: 95.6 MB (95641093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ffa71cbd4ba74fa27d6c9e9251a58e70c15bafbae3a8273efc5bdb9045fdcf1`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d744b02cc8eb74866944985f2447c53fb330ce87af3e968ad29b3358cda5115`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b0db54e16c6ddc45d25745b605729ca01be2d81b19f111d2d32733522df1bc`  
		Last Modified: Tue, 05 Mar 2019 03:34:38 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
