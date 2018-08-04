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
$ docker pull mysql@sha256:e8f85df0b02606e573ad3dfa31ad6dd1d659ad72ea927f8f307b28fa19ab9cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:fd46c9fa4f666643d334c8070049d398687a9b60dd02dab6f3995d6418b36181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123878922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75576f90a7797f67cdce6638c285fc81b8627f3236e89b923cddd5cb278d8d30`
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
# Tue, 31 Jul 2018 16:57:03 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 31 Jul 2018 16:57:03 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 31 Jul 2018 16:57:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 16:57:29 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:57:29 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:57:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:57:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:57:31 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:57:31 GMT
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
	-	`sha256:faf9da46e0cfe03b4e66c94ed8c837d3ad1e5a92c7d9fed14ca9c30ba5a290a5`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcedc9e86007ebeb528cf67cbb4b83ad947c38e70a23407a49cdbd2abf1a269`  
		Last Modified: Tue, 31 Jul 2018 17:03:38 GMT  
		Size: 83.5 MB (83506027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11f2447e862e9e1ed5ef7e8cb8e01091b41c6d7717b3a2e6d5941fdd728cd7`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02243b2842708923b7b1cdc800bdfd021b00deea0b007705eb267f07d6276314`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:973d09f802e90069f4090578bbfb5f1cc095d5c14bdd0bb2651d5e448751f907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:355f922d65fd9987b03bf92bb4a133e5378271e465b770a364fe5221337ed766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43b4117afc4f940ec5e988d8dcd09e783d13a9c0d9b309eb872dc198d4510f4`
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
# Tue, 31 Jul 2018 16:59:08 GMT
ENV MYSQL_VERSION=5.5.61
# Tue, 31 Jul 2018 17:00:05 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 31 Jul 2018 17:00:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 31 Jul 2018 17:00:18 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 31 Jul 2018 17:00:19 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 31 Jul 2018 17:00:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 17:00:20 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:00:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 17:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:00:22 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:00:22 GMT
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
	-	`sha256:77378af3211092035b7aae50fdea0250e70a5aae513e350f104e1aa41e9cd56e`  
		Last Modified: Tue, 31 Jul 2018 17:06:31 GMT  
		Size: 27.5 MB (27476739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863c888ab8920b25513ea82eb8352c3376281d7c0acd4facc966648a6998fdd`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970e89bcad84dedf2eabb890da96a62d2d467c932321f7783bef52993194f63c`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199374dd7b1179ade72c0d49dbc7eb31abfc4c5e7f31c24a1e629dad3fcf67b5`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf925b4c8c8228b1f49191aee45e7ae35e4f3409e6fe71fa228bce5ee3359e3`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.61`

```console
$ docker pull mysql@sha256:973d09f802e90069f4090578bbfb5f1cc095d5c14bdd0bb2651d5e448751f907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.61` - linux; amd64

```console
$ docker pull mysql@sha256:355f922d65fd9987b03bf92bb4a133e5378271e465b770a364fe5221337ed766
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c43b4117afc4f940ec5e988d8dcd09e783d13a9c0d9b309eb872dc198d4510f4`
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
# Tue, 31 Jul 2018 16:59:08 GMT
ENV MYSQL_VERSION=5.5.61
# Tue, 31 Jul 2018 17:00:05 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 31 Jul 2018 17:00:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 31 Jul 2018 17:00:18 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 31 Jul 2018 17:00:19 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 31 Jul 2018 17:00:20 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 17:00:20 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Tue, 31 Jul 2018 17:00:22 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 17:00:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 17:00:22 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 17:00:22 GMT
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
	-	`sha256:77378af3211092035b7aae50fdea0250e70a5aae513e350f104e1aa41e9cd56e`  
		Last Modified: Tue, 31 Jul 2018 17:06:31 GMT  
		Size: 27.5 MB (27476739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c863c888ab8920b25513ea82eb8352c3376281d7c0acd4facc966648a6998fdd`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970e89bcad84dedf2eabb890da96a62d2d467c932321f7783bef52993194f63c`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:199374dd7b1179ade72c0d49dbc7eb31abfc4c5e7f31c24a1e629dad3fcf67b5`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daf925b4c8c8228b1f49191aee45e7ae35e4f3409e6fe71fa228bce5ee3359e3`  
		Last Modified: Tue, 31 Jul 2018 17:06:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:2e48836690b8416e4890c369aa174fc1f73c125363d94d99cfd08115f4513ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:30be3d4afe858d69e9c6a7bb1b02e984897e8780915d3215ff3d10250e4dbdd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb93321b06db3c659d473ade22241b0d2eaa551c8479b9181672456293a0b9`
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
# Tue, 31 Jul 2018 16:58:03 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Tue, 31 Jul 2018 16:58:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 31 Jul 2018 16:58:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 16:58:27 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:58:28 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:58:29 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:58:30 GMT
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
	-	`sha256:0f5681d761284ac23820d79ec8c71d6444bb9908c08a9ed8c3f70f190bfb135e`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d3348c57426bb22bdc65dec2ece1c76279e29594b553adad3663194c6bb262`  
		Last Modified: Tue, 31 Jul 2018 17:05:16 GMT  
		Size: 44.2 MB (44214611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93f67de42c4e7d9d5fb8d7ce950b894ab50648fc6411fc79a72334c867b55a1`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adba6c10127f5fedd91f2bef75df063b94dbb5c22bd2214b903f414c45c376b`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.41`

```console
$ docker pull mysql@sha256:2e48836690b8416e4890c369aa174fc1f73c125363d94d99cfd08115f4513ec9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.41` - linux; amd64

```console
$ docker pull mysql@sha256:30be3d4afe858d69e9c6a7bb1b02e984897e8780915d3215ff3d10250e4dbdd4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7edb93321b06db3c659d473ade22241b0d2eaa551c8479b9181672456293a0b9`
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
# Tue, 31 Jul 2018 16:58:03 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Tue, 31 Jul 2018 16:58:04 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 31 Jul 2018 16:58:27 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 16:58:27 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:58:28 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:58:29 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:58:29 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:58:30 GMT
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
	-	`sha256:0f5681d761284ac23820d79ec8c71d6444bb9908c08a9ed8c3f70f190bfb135e`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56d3348c57426bb22bdc65dec2ece1c76279e29594b553adad3663194c6bb262`  
		Last Modified: Tue, 31 Jul 2018 17:05:16 GMT  
		Size: 44.2 MB (44214611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b93f67de42c4e7d9d5fb8d7ce950b894ab50648fc6411fc79a72334c867b55a1`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5adba6c10127f5fedd91f2bef75df063b94dbb5c22bd2214b903f414c45c376b`  
		Last Modified: Tue, 31 Jul 2018 17:05:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:e8f85df0b02606e573ad3dfa31ad6dd1d659ad72ea927f8f307b28fa19ab9cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:fd46c9fa4f666643d334c8070049d398687a9b60dd02dab6f3995d6418b36181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123878922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75576f90a7797f67cdce6638c285fc81b8627f3236e89b923cddd5cb278d8d30`
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
# Tue, 31 Jul 2018 16:57:03 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 31 Jul 2018 16:57:03 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 31 Jul 2018 16:57:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 16:57:29 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:57:29 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:57:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:57:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:57:31 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:57:31 GMT
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
	-	`sha256:faf9da46e0cfe03b4e66c94ed8c837d3ad1e5a92c7d9fed14ca9c30ba5a290a5`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcedc9e86007ebeb528cf67cbb4b83ad947c38e70a23407a49cdbd2abf1a269`  
		Last Modified: Tue, 31 Jul 2018 17:03:38 GMT  
		Size: 83.5 MB (83506027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11f2447e862e9e1ed5ef7e8cb8e01091b41c6d7717b3a2e6d5941fdd728cd7`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02243b2842708923b7b1cdc800bdfd021b00deea0b007705eb267f07d6276314`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.23`

```console
$ docker pull mysql@sha256:e8f85df0b02606e573ad3dfa31ad6dd1d659ad72ea927f8f307b28fa19ab9cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.23` - linux; amd64

```console
$ docker pull mysql@sha256:fd46c9fa4f666643d334c8070049d398687a9b60dd02dab6f3995d6418b36181
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123878922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75576f90a7797f67cdce6638c285fc81b8627f3236e89b923cddd5cb278d8d30`
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
# Tue, 31 Jul 2018 16:57:03 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Tue, 31 Jul 2018 16:57:03 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 31 Jul 2018 16:57:29 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 31 Jul 2018 16:57:29 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:57:29 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:57:31 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:57:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:57:31 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:57:31 GMT
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
	-	`sha256:faf9da46e0cfe03b4e66c94ed8c837d3ad1e5a92c7d9fed14ca9c30ba5a290a5`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffcedc9e86007ebeb528cf67cbb4b83ad947c38e70a23407a49cdbd2abf1a269`  
		Last Modified: Tue, 31 Jul 2018 17:03:38 GMT  
		Size: 83.5 MB (83506027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11f2447e862e9e1ed5ef7e8cb8e01091b41c6d7717b3a2e6d5941fdd728cd7`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02243b2842708923b7b1cdc800bdfd021b00deea0b007705eb267f07d6276314`  
		Last Modified: Tue, 31 Jul 2018 17:03:10 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:e42cbb3afa80aa210aa1245b930619c12641a8de57a486e6f1b11858307bd378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:b1cba388cd1ddbe3646cf06868134b5244d706578f4aeedf65771903f1ee2aaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137709656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbe2074ef0a0c494a3481d04377c24ed93711f25cc0bf55598ee052b6d4c277`
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
# Tue, 31 Jul 2018 16:56:14 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 31 Jul 2018 16:56:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Aug 2018 02:28:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Aug 2018 02:28:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Aug 2018 02:28:03 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Aug 2018 02:28:04 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:28:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Aug 2018 02:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:28:05 GMT
EXPOSE 3306/tcp
# Sat, 04 Aug 2018 02:28:22 GMT
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
	-	`sha256:54242fcd8eaabf9549cc757ab17ad3e1a1d91bff788ed86324d046240a9124ec`  
		Last Modified: Tue, 31 Jul 2018 17:00:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d4d211511b782c48e16c3fac1202ae21dfab883bd6e82ae92fbceb6b0ef1d`  
		Last Modified: Sat, 04 Aug 2018 02:29:41 GMT  
		Size: 97.3 MB (97335795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270ae5bd02c2704f172f9af40c1bf63cdd6f28bd4bd702c29f5c6a62cb2745ac`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55b8e72e7031c2a4ae502f8fa8c0ea67c9c84a9fdee51509c490b12e341a4e`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68083f7985cdf90d8743d9f2e1c0da292ddc793e882b0ac75df3238ec65d81b5`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:e42cbb3afa80aa210aa1245b930619c12641a8de57a486e6f1b11858307bd378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:b1cba388cd1ddbe3646cf06868134b5244d706578f4aeedf65771903f1ee2aaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137709656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbe2074ef0a0c494a3481d04377c24ed93711f25cc0bf55598ee052b6d4c277`
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
# Tue, 31 Jul 2018 16:56:14 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 31 Jul 2018 16:56:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Aug 2018 02:28:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Aug 2018 02:28:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Aug 2018 02:28:03 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Aug 2018 02:28:04 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:28:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Aug 2018 02:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:28:05 GMT
EXPOSE 3306/tcp
# Sat, 04 Aug 2018 02:28:22 GMT
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
	-	`sha256:54242fcd8eaabf9549cc757ab17ad3e1a1d91bff788ed86324d046240a9124ec`  
		Last Modified: Tue, 31 Jul 2018 17:00:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d4d211511b782c48e16c3fac1202ae21dfab883bd6e82ae92fbceb6b0ef1d`  
		Last Modified: Sat, 04 Aug 2018 02:29:41 GMT  
		Size: 97.3 MB (97335795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270ae5bd02c2704f172f9af40c1bf63cdd6f28bd4bd702c29f5c6a62cb2745ac`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55b8e72e7031c2a4ae502f8fa8c0ea67c9c84a9fdee51509c490b12e341a4e`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68083f7985cdf90d8743d9f2e1c0da292ddc793e882b0ac75df3238ec65d81b5`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.12`

```console
$ docker pull mysql@sha256:e42cbb3afa80aa210aa1245b930619c12641a8de57a486e6f1b11858307bd378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.12` - linux; amd64

```console
$ docker pull mysql@sha256:b1cba388cd1ddbe3646cf06868134b5244d706578f4aeedf65771903f1ee2aaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137709656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbe2074ef0a0c494a3481d04377c24ed93711f25cc0bf55598ee052b6d4c277`
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
# Tue, 31 Jul 2018 16:56:14 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 31 Jul 2018 16:56:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Aug 2018 02:28:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Aug 2018 02:28:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Aug 2018 02:28:03 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Aug 2018 02:28:04 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:28:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Aug 2018 02:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:28:05 GMT
EXPOSE 3306/tcp
# Sat, 04 Aug 2018 02:28:22 GMT
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
	-	`sha256:54242fcd8eaabf9549cc757ab17ad3e1a1d91bff788ed86324d046240a9124ec`  
		Last Modified: Tue, 31 Jul 2018 17:00:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d4d211511b782c48e16c3fac1202ae21dfab883bd6e82ae92fbceb6b0ef1d`  
		Last Modified: Sat, 04 Aug 2018 02:29:41 GMT  
		Size: 97.3 MB (97335795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270ae5bd02c2704f172f9af40c1bf63cdd6f28bd4bd702c29f5c6a62cb2745ac`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55b8e72e7031c2a4ae502f8fa8c0ea67c9c84a9fdee51509c490b12e341a4e`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68083f7985cdf90d8743d9f2e1c0da292ddc793e882b0ac75df3238ec65d81b5`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:e42cbb3afa80aa210aa1245b930619c12641a8de57a486e6f1b11858307bd378
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:b1cba388cd1ddbe3646cf06868134b5244d706578f4aeedf65771903f1ee2aaa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137709656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bbe2074ef0a0c494a3481d04377c24ed93711f25cc0bf55598ee052b6d4c277`
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
# Tue, 31 Jul 2018 16:56:14 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Tue, 31 Jul 2018 16:56:15 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 04 Aug 2018 02:28:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 04 Aug 2018 02:28:03 GMT
VOLUME [/var/lib/mysql]
# Sat, 04 Aug 2018 02:28:03 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Sat, 04 Aug 2018 02:28:04 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Sat, 04 Aug 2018 02:28:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 04 Aug 2018 02:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Aug 2018 02:28:05 GMT
EXPOSE 3306/tcp
# Sat, 04 Aug 2018 02:28:22 GMT
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
	-	`sha256:54242fcd8eaabf9549cc757ab17ad3e1a1d91bff788ed86324d046240a9124ec`  
		Last Modified: Tue, 31 Jul 2018 17:00:56 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a9d4d211511b782c48e16c3fac1202ae21dfab883bd6e82ae92fbceb6b0ef1d`  
		Last Modified: Sat, 04 Aug 2018 02:29:41 GMT  
		Size: 97.3 MB (97335795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270ae5bd02c2704f172f9af40c1bf63cdd6f28bd4bd702c29f5c6a62cb2745ac`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b55b8e72e7031c2a4ae502f8fa8c0ea67c9c84a9fdee51509c490b12e341a4e`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68083f7985cdf90d8743d9f2e1c0da292ddc793e882b0ac75df3238ec65d81b5`  
		Last Modified: Sat, 04 Aug 2018 02:29:02 GMT  
		Size: 119.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
