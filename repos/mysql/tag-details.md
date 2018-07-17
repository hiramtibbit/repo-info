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
$ docker pull mysql@sha256:8f96d261d3ae48f2f62ec6510ccd45ae0eae2f2c9192cfcec35f4af5884cdfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:0350f9443e138839b9bf5c7d22ceed374a6f80e21ae4dcd1853d102ee1182f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c356247174ed09823171ae537fd70273900103f2474c2eb62d8782ececcba7ab`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 17 Jul 2018 04:18:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:19:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:19:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:19:06 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:19:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:19:07 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:19:07 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91287b16b883cbbb153ee3f757e7529b71f1b31a7f5ff9d6bebb98b2cf40ad3`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ce724b2692b89b3a487126293331b6e09223c1d00ac017a24b725860721af8`  
		Last Modified: Tue, 17 Jul 2018 04:24:41 GMT  
		Size: 83.5 MB (83462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de12957e62224f70b0f1495072c0fc14e7d46363c9457a4d179dd6bbf68cd4d6`  
		Last Modified: Tue, 17 Jul 2018 04:24:14 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa5badca43c992cc45dbb04e83358ef1e12d8c662a22e31f0b502ffdd6e228`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:096a6ca01c606aa50ffc00b314b70e4ed27d0825548e1bd2bc488b5ce31fbfe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:114df8a6cd04358c6ceb8674d24e5f6497946ca8d8095fdc0b86f9b395771ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66049564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada54875c1a942acbe3a695ba0cffad8c868b56c01c37a048b93c6771a68834e`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:20:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:20:56 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 17 Jul 2018 04:20:56 GMT
ENV MYSQL_VERSION=5.5.60
# Tue, 17 Jul 2018 04:21:52 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 17 Jul 2018 04:21:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 17 Jul 2018 04:21:53 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 17 Jul 2018 04:21:54 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:21:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:21:55 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:21:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:21:56 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:21:56 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7fb29e97f576ea26b8f8000621d85a6625c58644a24e8add7d7a45288ce96c`  
		Last Modified: Tue, 17 Jul 2018 04:26:54 GMT  
		Size: 10.3 MB (10292148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab369f334f6e65f7b11055823cb63cd9122d24e9f22e18352bc9d69204489f88`  
		Last Modified: Tue, 17 Jul 2018 04:26:55 GMT  
		Size: 27.5 MB (27497416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef026cf46a54080cc405b1cb6942062f35fd1635f3fce1cf4e2672ce4ecdcd`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e32cffc1d8054bcb05f43a48572c64e6b5858198203b5d35e5182bc83936e9`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ca131db31cc1279886d8d2a80287e6802de8e5e0ef5a35f6f1b54964afcb1a`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 2.9 KB (2874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b816483078412572d32c11be27f83a46dafe367fa2a633f28b362ff9674530a8`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.60`

```console
$ docker pull mysql@sha256:096a6ca01c606aa50ffc00b314b70e4ed27d0825548e1bd2bc488b5ce31fbfe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.60` - linux; amd64

```console
$ docker pull mysql@sha256:114df8a6cd04358c6ceb8674d24e5f6497946ca8d8095fdc0b86f9b395771ef9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66049564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada54875c1a942acbe3a695ba0cffad8c868b56c01c37a048b93c6771a68834e`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:20:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:20:56 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 17 Jul 2018 04:20:56 GMT
ENV MYSQL_VERSION=5.5.60
# Tue, 17 Jul 2018 04:21:52 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 17 Jul 2018 04:21:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 17 Jul 2018 04:21:53 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 17 Jul 2018 04:21:54 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:21:55 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:21:55 GMT
COPY file:22b605c987937883f82f5f7dee3c85daeb3de7b8eb2283e1d3126d33e1b347ca in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:21:56 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:21:56 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:21:56 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be7fb29e97f576ea26b8f8000621d85a6625c58644a24e8add7d7a45288ce96c`  
		Last Modified: Tue, 17 Jul 2018 04:26:54 GMT  
		Size: 10.3 MB (10292148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab369f334f6e65f7b11055823cb63cd9122d24e9f22e18352bc9d69204489f88`  
		Last Modified: Tue, 17 Jul 2018 04:26:55 GMT  
		Size: 27.5 MB (27497416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cef026cf46a54080cc405b1cb6942062f35fd1635f3fce1cf4e2672ce4ecdcd`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67e32cffc1d8054bcb05f43a48572c64e6b5858198203b5d35e5182bc83936e9`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 179.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17ca131db31cc1279886d8d2a80287e6802de8e5e0ef5a35f6f1b54964afcb1a`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 2.9 KB (2874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b816483078412572d32c11be27f83a46dafe367fa2a633f28b362ff9674530a8`  
		Last Modified: Tue, 17 Jul 2018 04:26:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:29e32fba52c3e6708fdc8a7678287debe3554febced25ade8686a63d4409ceda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:290b6eb670b8f0743b4aaa94160d57f147e09eeb00271e0a8d1328bd3b872f8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82658318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da785d6c6ed84f249e7e53893e0ad6b1a42ee0454dcb3f54cde6ca08ac7d9c55`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:19:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:19:39 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 17 Jul 2018 04:19:39 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Tue, 17 Jul 2018 04:19:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:20:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:20:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:20:23 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:20:24 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:20:25 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879e8fa29de385625d3119faa6dbe1bd5515f1091baa7c899bbcdd8779090baf`  
		Last Modified: Tue, 17 Jul 2018 04:25:52 GMT  
		Size: 10.2 MB (10169036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb663b27910f5c3caaf6d45dfe33814ae6399d15d992185756c13ec295495f2`  
		Last Modified: Tue, 17 Jul 2018 04:25:44 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b0a5427b20e31cd2b878e161bb080af90d63326e20014169c4c32552d25b6`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b152caccfa7447c2dabb65b8a0d2f0affdb5c464c1817e07ec669020f0a098`  
		Last Modified: Tue, 17 Jul 2018 04:26:01 GMT  
		Size: 44.2 MB (44207172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0c833aa3c91668cfefdf96c2829c984d0083fec34f7a3c4515670c05087c96`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 2.8 KB (2849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3f2865e23653299c129a27a9bbf9fabf29bb59e69dbb31629b4a6212ca7d8b`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.40`

```console
$ docker pull mysql@sha256:29e32fba52c3e6708fdc8a7678287debe3554febced25ade8686a63d4409ceda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.40` - linux; amd64

```console
$ docker pull mysql@sha256:290b6eb670b8f0743b4aaa94160d57f147e09eeb00271e0a8d1328bd3b872f8e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82658318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da785d6c6ed84f249e7e53893e0ad6b1a42ee0454dcb3f54cde6ca08ac7d9c55`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:19:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:19:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:19:39 GMT
ENV MYSQL_MAJOR=5.6
# Tue, 17 Jul 2018 04:19:39 GMT
ENV MYSQL_VERSION=5.6.40-1debian9
# Tue, 17 Jul 2018 04:19:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:20:11 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:20:23 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:20:23 GMT
COPY file:36275029ba18b01466560b2df8cc0041f886ec27f45104fa11e6e04cefe139cf in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:20:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:20:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:20:24 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:20:25 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879e8fa29de385625d3119faa6dbe1bd5515f1091baa7c899bbcdd8779090baf`  
		Last Modified: Tue, 17 Jul 2018 04:25:52 GMT  
		Size: 10.2 MB (10169036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bb663b27910f5c3caaf6d45dfe33814ae6399d15d992185756c13ec295495f2`  
		Last Modified: Tue, 17 Jul 2018 04:25:44 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d69b0a5427b20e31cd2b878e161bb080af90d63326e20014169c4c32552d25b6`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b152caccfa7447c2dabb65b8a0d2f0affdb5c464c1817e07ec669020f0a098`  
		Last Modified: Tue, 17 Jul 2018 04:26:01 GMT  
		Size: 44.2 MB (44207172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf0c833aa3c91668cfefdf96c2829c984d0083fec34f7a3c4515670c05087c96`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 2.8 KB (2849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad3f2865e23653299c129a27a9bbf9fabf29bb59e69dbb31629b4a6212ca7d8b`  
		Last Modified: Tue, 17 Jul 2018 04:25:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:8f96d261d3ae48f2f62ec6510ccd45ae0eae2f2c9192cfcec35f4af5884cdfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:0350f9443e138839b9bf5c7d22ceed374a6f80e21ae4dcd1853d102ee1182f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c356247174ed09823171ae537fd70273900103f2474c2eb62d8782ececcba7ab`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 17 Jul 2018 04:18:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:19:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:19:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:19:06 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:19:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:19:07 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:19:07 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91287b16b883cbbb153ee3f757e7529b71f1b31a7f5ff9d6bebb98b2cf40ad3`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ce724b2692b89b3a487126293331b6e09223c1d00ac017a24b725860721af8`  
		Last Modified: Tue, 17 Jul 2018 04:24:41 GMT  
		Size: 83.5 MB (83462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de12957e62224f70b0f1495072c0fc14e7d46363c9457a4d179dd6bbf68cd4d6`  
		Last Modified: Tue, 17 Jul 2018 04:24:14 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa5badca43c992cc45dbb04e83358ef1e12d8c662a22e31f0b502ffdd6e228`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.22`

```console
$ docker pull mysql@sha256:8f96d261d3ae48f2f62ec6510ccd45ae0eae2f2c9192cfcec35f4af5884cdfcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.22` - linux; amd64

```console
$ docker pull mysql@sha256:0350f9443e138839b9bf5c7d22ceed374a6f80e21ae4dcd1853d102ee1182f43
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.8 MB (123835820 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c356247174ed09823171ae537fd70273900103f2474c2eb62d8782ececcba7ab`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_MAJOR=5.7
# Tue, 17 Jul 2018 04:18:04 GMT
ENV MYSQL_VERSION=5.7.22-1debian9
# Tue, 17 Jul 2018 04:18:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:19:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Tue, 17 Jul 2018 04:19:05 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:19:06 GMT
COPY file:8eeccb3c9ecfcd7d98da1f7c32d46772879504f0b15b5d7997867426ea8acf99 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:19:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:19:07 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:19:07 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91287b16b883cbbb153ee3f757e7529b71f1b31a7f5ff9d6bebb98b2cf40ad3`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 220.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58ce724b2692b89b3a487126293331b6e09223c1d00ac017a24b725860721af8`  
		Last Modified: Tue, 17 Jul 2018 04:24:41 GMT  
		Size: 83.5 MB (83462564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de12957e62224f70b0f1495072c0fc14e7d46363c9457a4d179dd6bbf68cd4d6`  
		Last Modified: Tue, 17 Jul 2018 04:24:14 GMT  
		Size: 2.9 KB (2867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7aa5badca43c992cc45dbb04e83358ef1e12d8c662a22e31f0b502ffdd6e228`  
		Last Modified: Tue, 17 Jul 2018 04:24:13 GMT  
		Size: 120.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:752674b529ea6d5552014630c813b8fc8eff09776481a3e81de4b11376d472cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:41a3d919f79c4a646a42846cf01a50ecfdf2720303f227dde92f92cf7839f0b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45277861b044bbd4fa0cf38f5e768b47f50fb564abfdd85e7664894fa3e97b6`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 17 Jul 2018 04:16:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:17:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:17:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:17:33 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 17 Jul 2018 04:17:33 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:17:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:17:35 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:17:35 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf860f635bb4de8144ba05de50bc57ea04868df74239b343c20340422852664`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169dbd2d3baf29c2d5422ef2f427670703a1bb78dc7944785d37d8c62ddf4e6`  
		Last Modified: Tue, 17 Jul 2018 04:23:04 GMT  
		Size: 86.7 MB (86654599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62da88586f4f79989898e8ae22f80658ce935565d72542f4e2bf827ecabe6457`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51575d56f81526ecbd70ac0e2395d60abd311f1c511bee5385ff0977da51444`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08e1391103844041fa955497cb25f3f65c00c0e154d93f9ffd8d915b166b13b`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:752674b529ea6d5552014630c813b8fc8eff09776481a3e81de4b11376d472cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:41a3d919f79c4a646a42846cf01a50ecfdf2720303f227dde92f92cf7839f0b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45277861b044bbd4fa0cf38f5e768b47f50fb564abfdd85e7664894fa3e97b6`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 17 Jul 2018 04:16:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:17:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:17:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:17:33 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 17 Jul 2018 04:17:33 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:17:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:17:35 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:17:35 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf860f635bb4de8144ba05de50bc57ea04868df74239b343c20340422852664`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169dbd2d3baf29c2d5422ef2f427670703a1bb78dc7944785d37d8c62ddf4e6`  
		Last Modified: Tue, 17 Jul 2018 04:23:04 GMT  
		Size: 86.7 MB (86654599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62da88586f4f79989898e8ae22f80658ce935565d72542f4e2bf827ecabe6457`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51575d56f81526ecbd70ac0e2395d60abd311f1c511bee5385ff0977da51444`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08e1391103844041fa955497cb25f3f65c00c0e154d93f9ffd8d915b166b13b`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.11`

```console
$ docker pull mysql@sha256:752674b529ea6d5552014630c813b8fc8eff09776481a3e81de4b11376d472cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.11` - linux; amd64

```console
$ docker pull mysql@sha256:41a3d919f79c4a646a42846cf01a50ecfdf2720303f227dde92f92cf7839f0b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45277861b044bbd4fa0cf38f5e768b47f50fb564abfdd85e7664894fa3e97b6`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 17 Jul 2018 04:16:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:17:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:17:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:17:33 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 17 Jul 2018 04:17:33 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:17:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:17:35 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:17:35 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf860f635bb4de8144ba05de50bc57ea04868df74239b343c20340422852664`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169dbd2d3baf29c2d5422ef2f427670703a1bb78dc7944785d37d8c62ddf4e6`  
		Last Modified: Tue, 17 Jul 2018 04:23:04 GMT  
		Size: 86.7 MB (86654599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62da88586f4f79989898e8ae22f80658ce935565d72542f4e2bf827ecabe6457`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51575d56f81526ecbd70ac0e2395d60abd311f1c511bee5385ff0977da51444`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08e1391103844041fa955497cb25f3f65c00c0e154d93f9ffd8d915b166b13b`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:752674b529ea6d5552014630c813b8fc8eff09776481a3e81de4b11376d472cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:41a3d919f79c4a646a42846cf01a50ecfdf2720303f227dde92f92cf7839f0b3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.0 MB (127028829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f45277861b044bbd4fa0cf38f5e768b47f50fb564abfdd85e7664894fa3e97b6`
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
# Tue, 17 Jul 2018 04:16:40 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 17 Jul 2018 04:16:41 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 17 Jul 2018 04:16:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:16:54 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 17 Jul 2018 04:16:55 GMT
ENV MYSQL_VERSION=8.0.11-1debian9
# Tue, 17 Jul 2018 04:16:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 17 Jul 2018 04:17:28 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 17 Jul 2018 04:17:33 GMT
VOLUME [/var/lib/mysql]
# Tue, 17 Jul 2018 04:17:33 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 17 Jul 2018 04:17:33 GMT
COPY file:3f638c16c570be34670cbf679b71e916b001b03bd0f6a5b2c683c1a63c402746 in /usr/local/bin/ 
# Tue, 17 Jul 2018 04:17:34 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 17 Jul 2018 04:17:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 17 Jul 2018 04:17:35 GMT
EXPOSE 3306/tcp
# Tue, 17 Jul 2018 04:17:35 GMT
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
	-	`sha256:be38c1ab6adbd853d6e538e5558ca6abc0a5f545e492c1bf14749de0e5edaac9`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 1.3 MB (1270278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e4cc8d0eef62896a4257d797a6a1f0b390f47c615da1ca4af6ba6257b8bbaa6`  
		Last Modified: Tue, 17 Jul 2018 04:22:33 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:076630dca16effb050ee8cd9de903bcb0ffc0059bc5aacffc4dac5a3c7763777`  
		Last Modified: Tue, 17 Jul 2018 04:22:38 GMT  
		Size: 12.1 MB (12091131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3cdaa36d52cc1794b4e8d1ef007e14365060a4ceaef0584b2c14f356ba9ef87`  
		Last Modified: Tue, 17 Jul 2018 04:22:31 GMT  
		Size: 22.3 KB (22329 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf860f635bb4de8144ba05de50bc57ea04868df74239b343c20340422852664`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169dbd2d3baf29c2d5422ef2f427670703a1bb78dc7944785d37d8c62ddf4e6`  
		Last Modified: Tue, 17 Jul 2018 04:23:04 GMT  
		Size: 86.7 MB (86654599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62da88586f4f79989898e8ae22f80658ce935565d72542f4e2bf827ecabe6457`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 896.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e51575d56f81526ecbd70ac0e2395d60abd311f1c511bee5385ff0977da51444`  
		Last Modified: Tue, 17 Jul 2018 04:22:30 GMT  
		Size: 2.9 KB (2942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b08e1391103844041fa955497cb25f3f65c00c0e154d93f9ffd8d915b166b13b`  
		Last Modified: Tue, 17 Jul 2018 04:22:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
