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
$ docker pull mysql@sha256:aaba540cdd9313645d892f4f20573e8b42b30e5be71c054b7befed2f7da5f85b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:e744510d4d03fddd1162651312afd1e591cf33b051c6f29ed64b9a3e64b97aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb891430fb6e2d3b4db41fd1f7ece08c5fc769d8f4823ec33c7c7ba99679213`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 27 Jul 2018 01:14:19 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:14:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 01:14:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:14:53 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:14:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:14:55 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:14:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79592d21cb7f58c285474583bf9f6865f6237641da9947a630a5333c3b9a73cc`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bfe968d82daece750299b4756dbf5b8942bf6c3578182f9c99c0ce445d3adf`  
		Last Modified: Fri, 27 Jul 2018 01:20:59 GMT  
		Size: 83.5 MB (83462591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cf546d477066c8ff85cc5842f51692d59096c266b0ce027e5388048b8d3ffb`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3c2e6bacee287a2b4e07582fe9f28954195170a961051ba6a41e92b71c064a`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:afad1851022672744b6419f05ade2e4295cea394eab31c12fd956edf398ba6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:9bfd96193298a4634b5b33c49cb2e8a372f03607c8f80bc16c24ace8ef15ecaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66049636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd7ceff3e537460369b6ac513f2c9706e2521d7d0978a444adf2d4a09155df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:16:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:03 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 27 Jul 2018 01:17:04 GMT
ENV MYSQL_VERSION=5.5.60
# Fri, 27 Jul 2018 01:17:58 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 27 Jul 2018 01:17:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 27 Jul 2018 01:17:59 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 27 Jul 2018 01:18:00 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:18:00 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:18:00 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:18:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:18:02 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:18:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5332dacc08779be14f26c036318d1ba2c63aa392264fad9d723bad9ea5df515`  
		Last Modified: Fri, 27 Jul 2018 01:23:17 GMT  
		Size: 10.3 MB (10292165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2824315ea51c7c264aeefe87105acf346480ad9f435adc3132ed5f7eb0a89216`  
		Last Modified: Fri, 27 Jul 2018 01:23:20 GMT  
		Size: 27.5 MB (27497457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a84cd60ad1a5afeb3e34fb0100ec76e22f53032bda330857254d08e353127f`  
		Last Modified: Fri, 27 Jul 2018 01:23:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f92a3e76a3e1974669e3683ae5e198ed73a761a89b482ad888576a088a2e08`  
		Last Modified: Fri, 27 Jul 2018 01:23:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc8f8dae4c992e6a8d7f7becf50ac3bde4c9aa353cdd97b5f712a0b1cbdefb`  
		Last Modified: Fri, 27 Jul 2018 01:23:10 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f11b9df4fa407152c105c514abd2702375ae3cb6d4af66f9836813d2483751`  
		Last Modified: Fri, 27 Jul 2018 01:23:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:afad1851022672744b6419f05ade2e4295cea394eab31c12fd956edf398ba6db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:9bfd96193298a4634b5b33c49cb2e8a372f03607c8f80bc16c24ace8ef15ecaf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66049636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2cd7ceff3e537460369b6ac513f2c9706e2521d7d0978a444adf2d4a09155df7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:16:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:17:03 GMT
ENV MYSQL_MAJOR=5.5
# Fri, 27 Jul 2018 01:17:04 GMT
ENV MYSQL_VERSION=5.5.60
# Fri, 27 Jul 2018 01:17:58 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Fri, 27 Jul 2018 01:17:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Fri, 27 Jul 2018 01:17:59 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Fri, 27 Jul 2018 01:18:00 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:18:00 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:18:00 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:18:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:18:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:18:02 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:18:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5332dacc08779be14f26c036318d1ba2c63aa392264fad9d723bad9ea5df515`  
		Last Modified: Fri, 27 Jul 2018 01:23:17 GMT  
		Size: 10.3 MB (10292165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2824315ea51c7c264aeefe87105acf346480ad9f435adc3132ed5f7eb0a89216`  
		Last Modified: Fri, 27 Jul 2018 01:23:20 GMT  
		Size: 27.5 MB (27497457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a84cd60ad1a5afeb3e34fb0100ec76e22f53032bda330857254d08e353127f`  
		Last Modified: Fri, 27 Jul 2018 01:23:10 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89f92a3e76a3e1974669e3683ae5e198ed73a761a89b482ad888576a088a2e08`  
		Last Modified: Fri, 27 Jul 2018 01:23:11 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ecc8f8dae4c992e6a8d7f7becf50ac3bde4c9aa353cdd97b5f712a0b1cbdefb`  
		Last Modified: Fri, 27 Jul 2018 01:23:10 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5f11b9df4fa407152c105c514abd2702375ae3cb6d4af66f9836813d2483751`  
		Last Modified: Fri, 27 Jul 2018 01:23:11 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:4902cd80486dca889205576a698a3e6534376ef6d8b94ef9fc9c61e891f1cd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:63638985e606efa6f5059948c8c1185651882e1309457c069f6ac244a386672a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82658747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50328380b2b44db6826909771a7059dbea575af52bc242dacd4f6e365f3592b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:15:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:15:33 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:15:33 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 27 Jul 2018 01:15:33 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Fri, 27 Jul 2018 01:15:34 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:15:55 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 01:15:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:15:56 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:16:12 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:16:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa8db7a5dc70ffaffa9a1d07f153f2fc4e7cc880eeb494cf62caa88d7da357`  
		Last Modified: Fri, 27 Jul 2018 01:22:15 GMT  
		Size: 10.2 MB (10169107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8988c5d95142a42a6948a55cd218f25c49284d52e2bffbd871ff3e410dc356`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 22.6 KB (22618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14d3607989258561f39d7ddfe9c5bb2ee582e8b71e8805b88370f2e0ea96a9b`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae927d273de43150bcf84fabfc7ad593c2e1a31b3e11ad2bf25770bff85f267a`  
		Last Modified: Fri, 27 Jul 2018 01:22:22 GMT  
		Size: 44.2 MB (44207229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd17abd57c5cbe45285d53ca2c28f9e7d41c4140d08f5b086114d5dc51318be`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc2c9e199812f7e9203b43c841c75663366b8e62657218cb29bce56faef885f`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:4902cd80486dca889205576a698a3e6534376ef6d8b94ef9fc9c61e891f1cd15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:63638985e606efa6f5059948c8c1185651882e1309457c069f6ac244a386672a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82658747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50328380b2b44db6826909771a7059dbea575af52bc242dacd4f6e365f3592b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:15:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:15:33 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:15:33 GMT
ENV MYSQL_MAJOR=5.6
# Fri, 27 Jul 2018 01:15:33 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Fri, 27 Jul 2018 01:15:34 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:15:55 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 01:15:56 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:15:56 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:15:57 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:16:12 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:16:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fa8db7a5dc70ffaffa9a1d07f153f2fc4e7cc880eeb494cf62caa88d7da357`  
		Last Modified: Fri, 27 Jul 2018 01:22:15 GMT  
		Size: 10.2 MB (10169107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea8988c5d95142a42a6948a55cd218f25c49284d52e2bffbd871ff3e410dc356`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 22.6 KB (22618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a14d3607989258561f39d7ddfe9c5bb2ee582e8b71e8805b88370f2e0ea96a9b`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae927d273de43150bcf84fabfc7ad593c2e1a31b3e11ad2bf25770bff85f267a`  
		Last Modified: Fri, 27 Jul 2018 01:22:22 GMT  
		Size: 44.2 MB (44207229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cd17abd57c5cbe45285d53ca2c28f9e7d41c4140d08f5b086114d5dc51318be`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 2.8 KB (2846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adc2c9e199812f7e9203b43c841c75663366b8e62657218cb29bce56faef885f`  
		Last Modified: Fri, 27 Jul 2018 01:22:05 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:aaba540cdd9313645d892f4f20573e8b42b30e5be71c054b7befed2f7da5f85b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:e744510d4d03fddd1162651312afd1e591cf33b051c6f29ed64b9a3e64b97aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb891430fb6e2d3b4db41fd1f7ece08c5fc769d8f4823ec33c7c7ba99679213`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 27 Jul 2018 01:14:19 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:14:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 01:14:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:14:53 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:14:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:14:55 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:14:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79592d21cb7f58c285474583bf9f6865f6237641da9947a630a5333c3b9a73cc`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bfe968d82daece750299b4756dbf5b8942bf6c3578182f9c99c0ce445d3adf`  
		Last Modified: Fri, 27 Jul 2018 01:20:59 GMT  
		Size: 83.5 MB (83462591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cf546d477066c8ff85cc5842f51692d59096c266b0ce027e5388048b8d3ffb`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3c2e6bacee287a2b4e07582fe9f28954195170a961051ba6a41e92b71c064a`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:aaba540cdd9313645d892f4f20573e8b42b30e5be71c054b7befed2f7da5f85b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:e744510d4d03fddd1162651312afd1e591cf33b051c6f29ed64b9a3e64b97aa7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bb891430fb6e2d3b4db41fd1f7ece08c5fc769d8f4823ec33c7c7ba99679213`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_MAJOR=5.7
# Fri, 27 Jul 2018 01:14:18 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Fri, 27 Jul 2018 01:14:19 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:14:44 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Fri, 27 Jul 2018 01:14:53 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:14:53 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:14:54 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:14:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:14:55 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:14:55 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79592d21cb7f58c285474583bf9f6865f6237641da9947a630a5333c3b9a73cc`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00bfe968d82daece750299b4756dbf5b8942bf6c3578182f9c99c0ce445d3adf`  
		Last Modified: Fri, 27 Jul 2018 01:20:59 GMT  
		Size: 83.5 MB (83462591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cf546d477066c8ff85cc5842f51692d59096c266b0ce027e5388048b8d3ffb`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 2.9 KB (2868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b3c2e6bacee287a2b4e07582fe9f28954195170a961051ba6a41e92b71c064a`  
		Last Modified: Fri, 27 Jul 2018 01:20:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:ffa442557c7a350939d9cd531f77d6cbb98e868aeb4a328289e0e5469101c20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:d98a807f255bd60cd7807af6a11f94cd2456a2908a12adb3737088473c1625a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbe5b6313e13db9674a452938731e74e9ed2adaf13cff3078acdbedae3d4bfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 27 Jul 2018 01:13:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:13:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:13:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:13:28 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 27 Jul 2018 01:13:29 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:13:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:13:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:13:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9e6fd6a279e04a203e6521420ab2b766c7f91ab8da933520be7e5851b035b`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ebd3ef120af699b40bfa9cd624af42e7ba183bc3672bc91a414148fa2df95`  
		Last Modified: Fri, 27 Jul 2018 01:19:06 GMT  
		Size: 86.7 MB (86654601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda665eddc40f93fe9f0407dc367125f50046b3742f307c79ab83d6fe1c54f0`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9007173a367871089a2693c3680dcefdfa5f726217704342a640e3525f8dae6`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f4d98907547041dd1a979641146c090c5c1cfbb2e882d23e7383d135ab433`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:ffa442557c7a350939d9cd531f77d6cbb98e868aeb4a328289e0e5469101c20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:d98a807f255bd60cd7807af6a11f94cd2456a2908a12adb3737088473c1625a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbe5b6313e13db9674a452938731e74e9ed2adaf13cff3078acdbedae3d4bfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 27 Jul 2018 01:13:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:13:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:13:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:13:28 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 27 Jul 2018 01:13:29 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:13:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:13:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:13:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9e6fd6a279e04a203e6521420ab2b766c7f91ab8da933520be7e5851b035b`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ebd3ef120af699b40bfa9cd624af42e7ba183bc3672bc91a414148fa2df95`  
		Last Modified: Fri, 27 Jul 2018 01:19:06 GMT  
		Size: 86.7 MB (86654601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda665eddc40f93fe9f0407dc367125f50046b3742f307c79ab83d6fe1c54f0`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9007173a367871089a2693c3680dcefdfa5f726217704342a640e3525f8dae6`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f4d98907547041dd1a979641146c090c5c1cfbb2e882d23e7383d135ab433`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:ffa442557c7a350939d9cd531f77d6cbb98e868aeb4a328289e0e5469101c20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:d98a807f255bd60cd7807af6a11f94cd2456a2908a12adb3737088473c1625a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbe5b6313e13db9674a452938731e74e9ed2adaf13cff3078acdbedae3d4bfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 27 Jul 2018 01:13:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:13:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:13:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:13:28 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 27 Jul 2018 01:13:29 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:13:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:13:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:13:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9e6fd6a279e04a203e6521420ab2b766c7f91ab8da933520be7e5851b035b`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ebd3ef120af699b40bfa9cd624af42e7ba183bc3672bc91a414148fa2df95`  
		Last Modified: Fri, 27 Jul 2018 01:19:06 GMT  
		Size: 86.7 MB (86654601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda665eddc40f93fe9f0407dc367125f50046b3742f307c79ab83d6fe1c54f0`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9007173a367871089a2693c3680dcefdfa5f726217704342a640e3525f8dae6`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f4d98907547041dd1a979641146c090c5c1cfbb2e882d23e7383d135ab433`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:ffa442557c7a350939d9cd531f77d6cbb98e868aeb4a328289e0e5469101c20e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:d98a807f255bd60cd7807af6a11f94cd2456a2908a12adb3737088473c1625a2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dbe5b6313e13db9674a452938731e74e9ed2adaf13cff3078acdbedae3d4bfa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 17 Jul 2018 00:28:04 GMT
ADD file:919939fa022472751b717443eea9f1d7ab5c0723f1f3a6b776d3b83d22bde818 in / 
# Tue, 17 Jul 2018 00:28:04 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 04:16:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 17 Jul 2018 04:16:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:21 GMT
ENV GOSU_VERSION=1.7
# Fri, 27 Jul 2018 01:12:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Fri, 27 Jul 2018 01:12:48 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Fri, 27 Jul 2018 01:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Jul 2018 01:13:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_MAJOR=8.0
# Fri, 27 Jul 2018 01:13:04 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Fri, 27 Jul 2018 01:13:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Fri, 27 Jul 2018 01:13:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Fri, 27 Jul 2018 01:13:28 GMT
VOLUME [/var/lib/mysql]
# Fri, 27 Jul 2018 01:13:28 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Fri, 27 Jul 2018 01:13:29 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Fri, 27 Jul 2018 01:13:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Fri, 27 Jul 2018 01:13:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 27 Jul 2018 01:13:30 GMT
EXPOSE 3306/tcp
# Fri, 27 Jul 2018 01:13:30 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:be8881be8156e4068e611fe956aba2b9593ebd953be14fb7feea6d0659aa3abe`  
		Last Modified: Tue, 17 Jul 2018 00:44:17 GMT  
		Size: 22.5 MB (22485906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3995dabd1d7cd2977c52e5494f091777d92216f1ba445c000818b82a0bd4605`  
		Last Modified: Tue, 17 Jul 2018 04:22:36 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9931fdda3586a52049081bc78fa9793476662310356127cc8baa52e38bb34a8d`  
		Last Modified: Tue, 17 Jul 2018 04:22:41 GMT  
		Size: 4.5 MB (4498549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1b6b6eff6a5d6f46d3e40876d993f3c092fb55d01d6f81dc9e45887e6ac961`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 1.3 MB (1270291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a65f125fa71845626e728910d5fadf0f0b1b5d576008e5a0d9de845a85b594a3`  
		Last Modified: Fri, 27 Jul 2018 01:18:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d9f8dd09be2432ba8afba1bf9f54460488c7349ded5a523352e83407740ba44`  
		Last Modified: Fri, 27 Jul 2018 01:18:39 GMT  
		Size: 12.1 MB (12090747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b912cb2afe57a2e3a2d55056875d5597e81dc03b51b6779df696712b1532d4`  
		Last Modified: Fri, 27 Jul 2018 01:18:32 GMT  
		Size: 22.3 KB (22328 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9e6fd6a279e04a203e6521420ab2b766c7f91ab8da933520be7e5851b035b`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:959ebd3ef120af699b40bfa9cd624af42e7ba183bc3672bc91a414148fa2df95`  
		Last Modified: Fri, 27 Jul 2018 01:19:06 GMT  
		Size: 86.7 MB (86654601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eda665eddc40f93fe9f0407dc367125f50046b3742f307c79ab83d6fe1c54f0`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9007173a367871089a2693c3680dcefdfa5f726217704342a640e3525f8dae6`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 2.9 KB (2939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:239f4d98907547041dd1a979641146c090c5c1cfbb2e882d23e7383d135ab433`  
		Last Modified: Fri, 27 Jul 2018 01:18:30 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
