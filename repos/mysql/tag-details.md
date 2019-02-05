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
$ docker pull mysql@sha256:1590f2540fd87e39605686873fb10206da4cbd7e83df2bc4110abe9fb740699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:5b9e24c6edfa42fd807439b4451122e90af1370b512a771c8c7f84da98d4eeb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141eda20897fd823bde45b0bbe75835551739dc84a2c02b3bd2d2ca7a2fea3be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 23 Jan 2019 04:23:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:24:00 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 04:24:00 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:24:00 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:24:01 GMT
EXPOSE 3306 33060
# Wed, 23 Jan 2019 04:24:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1e5bc08c4412c2ef8d5a2637185d49e49ed660a0d521b57895af606ffaf2c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbf322d346d707a76c547c5fab51820abb016776914a007873c3bd8369dacec`  
		Last Modified: Wed, 23 Jan 2019 04:28:09 GMT  
		Size: 83.5 MB (83490459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7193a395fe038b2bac88e0dd38b425dec8324f2032333c2f466d7427638cb791`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d177f9940737ab91a930eb3355e8914bab0011d0401537ee623b975223aabbb7`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:0510ece613362e5d91ee9eb28db30a588c04117ae8c59ec31a5981f83e8e9d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:05d5b896d805a69edaac6ab341e689c0f405c6e0fe7fadf604f735c024aa1d4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66083636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcfa755f192485577ce54816e5a5fc38b880eff31c0dc2ce9a425730e8e351`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:24:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:24:57 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 23 Jan 2019 04:24:57 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 23 Jan 2019 04:27:06 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 23 Jan 2019 04:27:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 23 Jan 2019 04:27:07 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 23 Jan 2019 04:27:07 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 23 Jan 2019 04:27:08 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:27:08 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:27:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:27:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:27:09 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 04:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852cfe5dca55695b24180cdea0fb09490420e6f8cc6fc447cc54e09cd18b0397`  
		Last Modified: Wed, 23 Jan 2019 04:28:33 GMT  
		Size: 10.3 MB (10293380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e60fa86d5711d2327ceeae1b6726ed3eef96d7794d79c1fad5db6b63935f0`  
		Last Modified: Wed, 23 Jan 2019 04:28:35 GMT  
		Size: 27.5 MB (27512957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c1c7d8dd6d6731e0f6d66eb5c8f80e1dd62db1ac6177bd457f1a9d2348697`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9fcaf4144120b4ec376f9c827895c6fa0f6dd5768e56244ebf836a39f901c7`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4bda3739a6c1243863e42966310515bee95175d9cc0df1629a4da74b92e55e`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ee1bc1b20899a1acd285044ac43cc92cf6db3c13809815f5d854736e6376d`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:0510ece613362e5d91ee9eb28db30a588c04117ae8c59ec31a5981f83e8e9d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:05d5b896d805a69edaac6ab341e689c0f405c6e0fe7fadf604f735c024aa1d4b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66083636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ffcfa755f192485577ce54816e5a5fc38b880eff31c0dc2ce9a425730e8e351`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:24:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:24:57 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 23 Jan 2019 04:24:57 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 23 Jan 2019 04:27:06 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 23 Jan 2019 04:27:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 23 Jan 2019 04:27:07 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 23 Jan 2019 04:27:07 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 23 Jan 2019 04:27:08 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:27:08 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:27:09 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:27:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:27:09 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 04:27:09 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852cfe5dca55695b24180cdea0fb09490420e6f8cc6fc447cc54e09cd18b0397`  
		Last Modified: Wed, 23 Jan 2019 04:28:33 GMT  
		Size: 10.3 MB (10293380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e27e60fa86d5711d2327ceeae1b6726ed3eef96d7794d79c1fad5db6b63935f0`  
		Last Modified: Wed, 23 Jan 2019 04:28:35 GMT  
		Size: 27.5 MB (27512957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab7c1c7d8dd6d6731e0f6d66eb5c8f80e1dd62db1ac6177bd457f1a9d2348697`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb9fcaf4144120b4ec376f9c827895c6fa0f6dd5768e56244ebf836a39f901c7`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4bda3739a6c1243863e42966310515bee95175d9cc0df1629a4da74b92e55e`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e22ee1bc1b20899a1acd285044ac43cc92cf6db3c13809815f5d854736e6376d`  
		Last Modified: Wed, 23 Jan 2019 04:28:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:b1ce8d01d2791d7aed6f494082b78fcda3828216f9304a4eebffdf000f5b78f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:5f19c2c5edb625f312c48e79f55a8161def65095a49f36fdff4cb60667f82c98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82705908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6831dec98788fda3327e9149ee2fcfa15a0e97eeab7cbecac671ea3088dc79fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:24:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:24:15 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:24:15 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 23 Jan 2019 04:24:16 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Wed, 23 Jan 2019 04:24:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:24:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 04:24:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:24:42 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:24:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 04:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a4f515f54d8565997183f8473907d8fd3b6cd76b457bbb387f204a83b229a`  
		Last Modified: Wed, 23 Jan 2019 04:28:20 GMT  
		Size: 10.2 MB (10168778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cba1a3fccd19325c767bc5414fa42da4ebfa7474607a56fd6759c8a78a4f72`  
		Last Modified: Wed, 23 Jan 2019 04:28:16 GMT  
		Size: 25.8 KB (25803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6ad81ee6f5fd1b44bc5edf411824b2cb8b2031345139e17ca629d007f12f3`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2beb3c7f22ae72e0c6020ad71bef88c8e85cb4a0de7943a1bf6cbf2d1435c764`  
		Last Modified: Wed, 23 Jan 2019 04:28:24 GMT  
		Size: 44.2 MB (44234246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9ab416d8af6e39337e3a7250adf21339843c191d34c41d53754419602cdd3`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed0f6e139067083341f0adfa41860b5b0af82199d7d12fc2b00995ebf794706`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.43`

```console
$ docker pull mysql@sha256:b1ce8d01d2791d7aed6f494082b78fcda3828216f9304a4eebffdf000f5b78f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.43` - linux; amd64

```console
$ docker pull mysql@sha256:5f19c2c5edb625f312c48e79f55a8161def65095a49f36fdff4cb60667f82c98
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82705908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6831dec98788fda3327e9149ee2fcfa15a0e97eeab7cbecac671ea3088dc79fc`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:24:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:24:15 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:24:15 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 23 Jan 2019 04:24:16 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Wed, 23 Jan 2019 04:24:16 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:24:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 04:24:42 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:24:42 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:24:43 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:24:43 GMT
EXPOSE 3306
# Wed, 23 Jan 2019 04:24:43 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218a4f515f54d8565997183f8473907d8fd3b6cd76b457bbb387f204a83b229a`  
		Last Modified: Wed, 23 Jan 2019 04:28:20 GMT  
		Size: 10.2 MB (10168778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8cba1a3fccd19325c767bc5414fa42da4ebfa7474607a56fd6759c8a78a4f72`  
		Last Modified: Wed, 23 Jan 2019 04:28:16 GMT  
		Size: 25.8 KB (25803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61a6ad81ee6f5fd1b44bc5edf411824b2cb8b2031345139e17ca629d007f12f3`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2beb3c7f22ae72e0c6020ad71bef88c8e85cb4a0de7943a1bf6cbf2d1435c764`  
		Last Modified: Wed, 23 Jan 2019 04:28:24 GMT  
		Size: 44.2 MB (44234246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8b9ab416d8af6e39337e3a7250adf21339843c191d34c41d53754419602cdd3`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 2.9 KB (2859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ed0f6e139067083341f0adfa41860b5b0af82199d7d12fc2b00995ebf794706`  
		Last Modified: Wed, 23 Jan 2019 04:28:15 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:1590f2540fd87e39605686873fb10206da4cbd7e83df2bc4110abe9fb740699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:5b9e24c6edfa42fd807439b4451122e90af1370b512a771c8c7f84da98d4eeb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141eda20897fd823bde45b0bbe75835551739dc84a2c02b3bd2d2ca7a2fea3be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 23 Jan 2019 04:23:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:24:00 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 04:24:00 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:24:00 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:24:01 GMT
EXPOSE 3306 33060
# Wed, 23 Jan 2019 04:24:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1e5bc08c4412c2ef8d5a2637185d49e49ed660a0d521b57895af606ffaf2c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbf322d346d707a76c547c5fab51820abb016776914a007873c3bd8369dacec`  
		Last Modified: Wed, 23 Jan 2019 04:28:09 GMT  
		Size: 83.5 MB (83490459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7193a395fe038b2bac88e0dd38b425dec8324f2032333c2f466d7427638cb791`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d177f9940737ab91a930eb3355e8914bab0011d0401537ee623b975223aabbb7`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.25`

```console
$ docker pull mysql@sha256:1590f2540fd87e39605686873fb10206da4cbd7e83df2bc4110abe9fb740699e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.25` - linux; amd64

```console
$ docker pull mysql@sha256:5b9e24c6edfa42fd807439b4451122e90af1370b512a771c8c7f84da98d4eeb0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:141eda20897fd823bde45b0bbe75835551739dc84a2c02b3bd2d2ca7a2fea3be`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 23 Jan 2019 04:23:39 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 23 Jan 2019 04:23:40 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:24:00 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 23 Jan 2019 04:24:00 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:24:00 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:24:01 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:24:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:24:01 GMT
EXPOSE 3306 33060
# Wed, 23 Jan 2019 04:24:02 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd1e5bc08c4412c2ef8d5a2637185d49e49ed660a0d521b57895af606ffaf2c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cbf322d346d707a76c547c5fab51820abb016776914a007873c3bd8369dacec`  
		Last Modified: Wed, 23 Jan 2019 04:28:09 GMT  
		Size: 83.5 MB (83490459 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7193a395fe038b2bac88e0dd38b425dec8324f2032333c2f466d7427638cb791`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d177f9940737ab91a930eb3355e8914bab0011d0401537ee623b975223aabbb7`  
		Last Modified: Wed, 23 Jan 2019 04:27:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:ac6197327b4782d868cd64942fb8b3fe2670384437e9ccc51d50217f05acc608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:d4c590a3231aff7e124660c31febe48e0fd21b6ae232d9e79de2632268c7e300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d587c6511d7e46108197e9cf73daedeb82abcc1ae4287e586a9dfc37482c24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:11 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Feb 2019 20:33:06 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Feb 2019 20:33:07 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Feb 2019 20:33:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Feb 2019 20:33:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Feb 2019 20:33:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Feb 2019 20:33:27 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Feb 2019 20:33:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Feb 2019 20:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 20:33:28 GMT
EXPOSE 3306 33060
# Tue, 05 Feb 2019 20:33:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08edcb1ed9002a26abc2bf0a5f1b610a693530c8578668778887a6c446df3e7e`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f11382a9e1644d5ed98a691a8cab7c00da139b5437782989ad970b0f25751`  
		Last Modified: Tue, 05 Feb 2019 20:34:04 GMT  
		Size: 95.6 MB (95641191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fc4fffa11ff8c5892afa93a2d5601c26b011c9d5a097b8ac03ec4d9a34d544`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a44cab538bd8d375c0c2571afc0ad762fb3546d3a0f9288c52ebb5604b78b0`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef3be8efa9b30726b4059fdd8549ac64f59cd5d5e19c2bd085e8fb819855899`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:ac6197327b4782d868cd64942fb8b3fe2670384437e9ccc51d50217f05acc608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:d4c590a3231aff7e124660c31febe48e0fd21b6ae232d9e79de2632268c7e300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d587c6511d7e46108197e9cf73daedeb82abcc1ae4287e586a9dfc37482c24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:11 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Feb 2019 20:33:06 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Feb 2019 20:33:07 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Feb 2019 20:33:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Feb 2019 20:33:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Feb 2019 20:33:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Feb 2019 20:33:27 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Feb 2019 20:33:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Feb 2019 20:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 20:33:28 GMT
EXPOSE 3306 33060
# Tue, 05 Feb 2019 20:33:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08edcb1ed9002a26abc2bf0a5f1b610a693530c8578668778887a6c446df3e7e`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f11382a9e1644d5ed98a691a8cab7c00da139b5437782989ad970b0f25751`  
		Last Modified: Tue, 05 Feb 2019 20:34:04 GMT  
		Size: 95.6 MB (95641191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fc4fffa11ff8c5892afa93a2d5601c26b011c9d5a097b8ac03ec4d9a34d544`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a44cab538bd8d375c0c2571afc0ad762fb3546d3a0f9288c52ebb5604b78b0`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef3be8efa9b30726b4059fdd8549ac64f59cd5d5e19c2bd085e8fb819855899`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.15`

```console
$ docker pull mysql@sha256:ac6197327b4782d868cd64942fb8b3fe2670384437e9ccc51d50217f05acc608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.15` - linux; amd64

```console
$ docker pull mysql@sha256:d4c590a3231aff7e124660c31febe48e0fd21b6ae232d9e79de2632268c7e300
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57d587c6511d7e46108197e9cf73daedeb82abcc1ae4287e586a9dfc37482c24`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:11 GMT
ENV MYSQL_MAJOR=8.0
# Tue, 05 Feb 2019 20:33:06 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 05 Feb 2019 20:33:07 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 05 Feb 2019 20:33:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 05 Feb 2019 20:33:26 GMT
VOLUME [/var/lib/mysql]
# Tue, 05 Feb 2019 20:33:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 05 Feb 2019 20:33:27 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 05 Feb 2019 20:33:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 05 Feb 2019 20:33:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 05 Feb 2019 20:33:28 GMT
EXPOSE 3306 33060
# Tue, 05 Feb 2019 20:33:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08edcb1ed9002a26abc2bf0a5f1b610a693530c8578668778887a6c446df3e7e`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577f11382a9e1644d5ed98a691a8cab7c00da139b5437782989ad970b0f25751`  
		Last Modified: Tue, 05 Feb 2019 20:34:04 GMT  
		Size: 95.6 MB (95641191 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fc4fffa11ff8c5892afa93a2d5601c26b011c9d5a097b8ac03ec4d9a34d544`  
		Last Modified: Tue, 05 Feb 2019 20:33:46 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6a44cab538bd8d375c0c2571afc0ad762fb3546d3a0f9288c52ebb5604b78b0`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fef3be8efa9b30726b4059fdd8549ac64f59cd5d5e19c2bd085e8fb819855899`  
		Last Modified: Tue, 05 Feb 2019 20:33:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:048c2c616866c47c8a9fb604548d32ce842be292b56fba3d90fc07e0e143dac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:a50c80b8ad64bd98f3f50770714cbe2904951d32c5a59860f74eb7b89958eb5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136055020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b5c7e10f9b20f4bd37c348872899cac828b1d2edad269fc8b93c9d43682241`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 22 Jan 2019 19:30:32 GMT
ADD file:a65337a57a064a79ad8a3f42e8282b3e01710cb4684ccd880463cc8d2e051fa5 in / 
# Tue, 22 Jan 2019 19:30:32 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 04:22:37 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 23 Jan 2019 04:22:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:22:44 GMT
ENV GOSU_VERSION=1.7
# Wed, 23 Jan 2019 04:23:01 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 23 Jan 2019 04:23:01 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 23 Jan 2019 04:23:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:23:11 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 23 Jan 2019 04:23:11 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 23 Jan 2019 04:23:11 GMT
ENV MYSQL_VERSION=8.0.14-1debian9
# Wed, 23 Jan 2019 04:23:12 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 23 Jan 2019 04:23:30 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 23 Jan 2019 04:23:30 GMT
VOLUME [/var/lib/mysql]
# Wed, 23 Jan 2019 04:23:31 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Wed, 23 Jan 2019 04:23:31 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Wed, 23 Jan 2019 04:23:32 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 23 Jan 2019 04:23:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 23 Jan 2019 04:23:32 GMT
EXPOSE 3306 33060
# Wed, 23 Jan 2019 04:23:32 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:5e6ec7f28fb77f84f64b8c29fcb0a746260563f5858315e3e9fcc4aee2844840`  
		Last Modified: Tue, 22 Jan 2019 19:37:02 GMT  
		Size: 22.5 MB (22500707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4140e62498e13d9c42c921718d8c5a991b42f9fd21c1e1b14f459e67adee96f2`  
		Last Modified: Wed, 23 Jan 2019 04:27:29 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7bc612618a06e12cd67a22a844c303ead1922bb4563ea9fbeaaf230e8dcb5c9`  
		Last Modified: Wed, 23 Jan 2019 04:27:30 GMT  
		Size: 4.5 MB (4500984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af808cf1124b2f566efceda477c52bcd9d17b2e8bc91151ded728ebe229c4ff`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 1.3 MB (1270333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff72a74ebb66aeca48ddf58e5ee7ebca6f13ef728d3f8953ab48619a0d4c64c0`  
		Last Modified: Wed, 23 Jan 2019 04:27:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a28cb03e3dcce5aa8f8dbaa3a363fbafe303435231e8f111a4e2483e1fa7eae`  
		Last Modified: Wed, 23 Jan 2019 04:27:31 GMT  
		Size: 12.1 MB (12108268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b52dda3bd7d4cd4f283a9bd9c10e53a3dc092f78fe3a5ded5cb18b94dab8ee4`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 25.8 KB (25802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc89e81122ad61f8e891a82c8bc59c0d23f887a8f232e7b2729cd69ac4d60f04`  
		Last Modified: Wed, 23 Jan 2019 04:27:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecba98b7a588b3c9c38ace520165b80a798248d3eac2804fcef69f74f7602717`  
		Last Modified: Wed, 23 Jan 2019 04:27:47 GMT  
		Size: 95.6 MB (95642876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b011a27beeb41d605361fd36d03b5c11de16cdb30f13cc7b6c0d2aeadf1aa`  
		Last Modified: Wed, 23 Jan 2019 04:27:26 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f380f98ab523a35b8bc3b94532f124a25f4d6b46fd440375cb820f4b3d6f1b2`  
		Last Modified: Wed, 23 Jan 2019 04:27:26 GMT  
		Size: 3.0 KB (2954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdda841f5c5c8b25b24c79487ac5f11bf342a61c7b01e13d7180976864a4862b`  
		Last Modified: Wed, 23 Jan 2019 04:27:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
