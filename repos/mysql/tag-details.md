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
$ docker pull mysql@sha256:8c15b2612051244d0a2b6ceb6f9bf82ddc0e909555c1067c098e5f935e2751a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:888d433748dbccc8388a665134b1906f13f599753ef190546903181b7312027d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47e309f72c831cf880cc0e1990b9c5ac427016acdc71346a36c83806ca79bb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 06 Feb 2019 07:06:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 07:06:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:34 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:36 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f22805bb6d6f69f576001d44b0d5eaba95c4a8423bc338126e797fa6c848ce8`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394f0f652697db50bcf97ee7371ccc03e31d342277481d75607c930e2d73f64f`  
		Last Modified: Wed, 06 Feb 2019 07:10:18 GMT  
		Size: 83.5 MB (83490487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb068b9b9d1fac40c9a77f1b0d661d15df6e6f36d492e0bd16f793d63621ee57`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc96ad09374d7ed773f82dfd8d8be19a3395b5995f5508622ab133b866dda9`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:af74816e676d6ac021a266e8b1da4f3c8608b29ef456392637541fdfa51797d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:9e87ee806b83acbcfcb942ff162173372b7fbff830045f4b8385672277275898
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66083176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ba61f07d0ceac9ab0af6f6f9271b8b1d5bda3258297df61972529599f94269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:07:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:07:23 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 06 Feb 2019 07:07:24 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 06 Feb 2019 07:09:18 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 06 Feb 2019 07:09:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 06 Feb 2019 07:09:20 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 06 Feb 2019 07:09:22 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 06 Feb 2019 07:09:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:09:22 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:09:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:09:26 GMT
EXPOSE 3306
# Wed, 06 Feb 2019 07:09:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3e47a6e3f4186c8172c56de608029b24df9d669dd60206d0cd5fbac1dbdb5`  
		Last Modified: Wed, 06 Feb 2019 07:10:42 GMT  
		Size: 10.3 MB (10293366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dfa289d3d10363897092b37946766fbfa8c0f1429b26928c2c1323c9b16f1c`  
		Last Modified: Wed, 06 Feb 2019 07:10:42 GMT  
		Size: 27.5 MB (27512905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681bd35bda0e59703988a2e9b5788a6cbc808398ec75686a85b6ee25f1438d3a`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf1b4c50281d5c86fb3d42ca94323659e07961bfd7a25708d1ba8b167bf708b`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d50df9fe76a4fa37d5ea34e9bf06032d8ace31a699e14933f9070a1b89e6d71`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4773537fff9ff59fcf42f5737d593a568af709f6c055be9f718b36475f14d36`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:af74816e676d6ac021a266e8b1da4f3c8608b29ef456392637541fdfa51797d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:9e87ee806b83acbcfcb942ff162173372b7fbff830045f4b8385672277275898
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66083176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50ba61f07d0ceac9ab0af6f6f9271b8b1d5bda3258297df61972529599f94269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:07:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:07:23 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 06 Feb 2019 07:07:24 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 06 Feb 2019 07:09:18 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 06 Feb 2019 07:09:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 06 Feb 2019 07:09:20 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 06 Feb 2019 07:09:22 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 06 Feb 2019 07:09:22 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:09:22 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:09:24 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:09:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:09:26 GMT
EXPOSE 3306
# Wed, 06 Feb 2019 07:09:26 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c3e47a6e3f4186c8172c56de608029b24df9d669dd60206d0cd5fbac1dbdb5`  
		Last Modified: Wed, 06 Feb 2019 07:10:42 GMT  
		Size: 10.3 MB (10293366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23dfa289d3d10363897092b37946766fbfa8c0f1429b26928c2c1323c9b16f1c`  
		Last Modified: Wed, 06 Feb 2019 07:10:42 GMT  
		Size: 27.5 MB (27512905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:681bd35bda0e59703988a2e9b5788a6cbc808398ec75686a85b6ee25f1438d3a`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf1b4c50281d5c86fb3d42ca94323659e07961bfd7a25708d1ba8b167bf708b`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d50df9fe76a4fa37d5ea34e9bf06032d8ace31a699e14933f9070a1b89e6d71`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 2.9 KB (2886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4773537fff9ff59fcf42f5737d593a568af709f6c055be9f718b36475f14d36`  
		Last Modified: Wed, 06 Feb 2019 07:10:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:3ded8f4be8a6581c02abc3d0fa29e9806716acb2fd4190f65336e9d6e61f5b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:211bfdffd9caa326b86e8e4416e64395f8f00f78ee2edfeb85abf5f7b33e1cc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82705815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e41ac53eace43b9cbfefe4683b81d6ee772973c6bba13daadbbcf92654ad8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:06:50 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:06:50 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 06 Feb 2019 07:06:51 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Wed, 06 Feb 2019 07:06:52 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:07:10 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 07:07:11 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:07:11 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:07:13 GMT
EXPOSE 3306
# Wed, 06 Feb 2019 07:07:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25097d3ea7b89d06ef2ab0ce836f2e10b55f28cd7410cffd642e645bdd639906`  
		Last Modified: Wed, 06 Feb 2019 07:10:27 GMT  
		Size: 10.2 MB (10168791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c1b74fda20fc418e84a1f59b8fbe2dd8b8619ff30af3452e6873d72dd44aa`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda5767f8d3f58bf368d5cd93f847c7447a5b39912473ea2ca6d1bcfe4fd913d`  
		Last Modified: Wed, 06 Feb 2019 07:10:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57c9a598ba31e51becebe3b618c8ace9f53b461401def9563d02f44c95c840`  
		Last Modified: Wed, 06 Feb 2019 07:10:33 GMT  
		Size: 44.2 MB (44234260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f28f294e2f15ea1684ffea0f77c882cab304bffc0831d554e68dcd47df60f7`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 2.9 KB (2857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b29ab4a8abfa50b7b0f11017e5ef0ef40034802be5b2e886a9d83ba17c63b5`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.43`

```console
$ docker pull mysql@sha256:3ded8f4be8a6581c02abc3d0fa29e9806716acb2fd4190f65336e9d6e61f5b9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.43` - linux; amd64

```console
$ docker pull mysql@sha256:211bfdffd9caa326b86e8e4416e64395f8f00f78ee2edfeb85abf5f7b33e1cc5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82705815 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96e41ac53eace43b9cbfefe4683b81d6ee772973c6bba13daadbbcf92654ad8d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:06:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:06:50 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:06:50 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 06 Feb 2019 07:06:51 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Wed, 06 Feb 2019 07:06:52 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:07:10 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 07:07:11 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:07:11 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:07:12 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:07:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:07:13 GMT
EXPOSE 3306
# Wed, 06 Feb 2019 07:07:13 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25097d3ea7b89d06ef2ab0ce836f2e10b55f28cd7410cffd642e645bdd639906`  
		Last Modified: Wed, 06 Feb 2019 07:10:27 GMT  
		Size: 10.2 MB (10168791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606c1b74fda20fc418e84a1f59b8fbe2dd8b8619ff30af3452e6873d72dd44aa`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eda5767f8d3f58bf368d5cd93f847c7447a5b39912473ea2ca6d1bcfe4fd913d`  
		Last Modified: Wed, 06 Feb 2019 07:10:23 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b57c9a598ba31e51becebe3b618c8ace9f53b461401def9563d02f44c95c840`  
		Last Modified: Wed, 06 Feb 2019 07:10:33 GMT  
		Size: 44.2 MB (44234260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57f28f294e2f15ea1684ffea0f77c882cab304bffc0831d554e68dcd47df60f7`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 2.9 KB (2857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b29ab4a8abfa50b7b0f11017e5ef0ef40034802be5b2e886a9d83ba17c63b5`  
		Last Modified: Wed, 06 Feb 2019 07:10:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:8c15b2612051244d0a2b6ceb6f9bf82ddc0e909555c1067c098e5f935e2751a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:888d433748dbccc8388a665134b1906f13f599753ef190546903181b7312027d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47e309f72c831cf880cc0e1990b9c5ac427016acdc71346a36c83806ca79bb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 06 Feb 2019 07:06:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 07:06:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:34 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:36 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f22805bb6d6f69f576001d44b0d5eaba95c4a8423bc338126e797fa6c848ce8`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394f0f652697db50bcf97ee7371ccc03e31d342277481d75607c930e2d73f64f`  
		Last Modified: Wed, 06 Feb 2019 07:10:18 GMT  
		Size: 83.5 MB (83490487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb068b9b9d1fac40c9a77f1b0d661d15df6e6f36d492e0bd16f793d63621ee57`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc96ad09374d7ed773f82dfd8d8be19a3395b5995f5508622ab133b866dda9`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.25`

```console
$ docker pull mysql@sha256:8c15b2612051244d0a2b6ceb6f9bf82ddc0e909555c1067c098e5f935e2751a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.25` - linux; amd64

```console
$ docker pull mysql@sha256:888d433748dbccc8388a665134b1906f13f599753ef190546903181b7312027d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123901819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e47e309f72c831cf880cc0e1990b9c5ac427016acdc71346a36c83806ca79bb4`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 06 Feb 2019 07:06:08 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Wed, 06 Feb 2019 07:06:10 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:32 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 06 Feb 2019 07:06:33 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:34 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:35 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:36 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:37 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f22805bb6d6f69f576001d44b0d5eaba95c4a8423bc338126e797fa6c848ce8`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:394f0f652697db50bcf97ee7371ccc03e31d342277481d75607c930e2d73f64f`  
		Last Modified: Wed, 06 Feb 2019 07:10:18 GMT  
		Size: 83.5 MB (83490487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb068b9b9d1fac40c9a77f1b0d661d15df6e6f36d492e0bd16f793d63621ee57`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 2.9 KB (2877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdfc96ad09374d7ed773f82dfd8d8be19a3395b5995f5508622ab133b866dda9`  
		Last Modified: Wed, 06 Feb 2019 07:10:02 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:a571337738c9205427c80748e165eca88edc5a1157f8b8d545fa127fc3e29269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:8c7d6df5e7b7c41530d9a3569145e30be0c2e919a29f7b3bcf040a74b092c887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f094a7e4ccc963fde3762e86625af76b6339924bf13f1b7bd3c51dbcfda988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:05:42 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 06 Feb 2019 07:05:43 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Wed, 06 Feb 2019 07:05:45 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 06 Feb 2019 07:06:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:03 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Wed, 06 Feb 2019 07:06:03 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:04 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e2d50f1513ed58fc5b32041fd2640e9d5c76db416d6164fff9dbcc703dd186`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e3c992818066c2b2304c73c74346e59d2dda4e97abc54c6132d4a44444db46`  
		Last Modified: Wed, 06 Feb 2019 07:09:57 GMT  
		Size: 95.6 MB (95640817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60db6d282cd49a5625cc1b572c236758758bbf9b262567eb6c58b05fc99626b`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d32deab69c6d6a5e753b8d564ae8ad57487f9dc59ab0e32304972eb3b1c1361`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408a40cd2e9ce7a4099940aa92b466aaaf2b6fb93f4b3b41a708b4ac061176a8`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:a571337738c9205427c80748e165eca88edc5a1157f8b8d545fa127fc3e29269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:8c7d6df5e7b7c41530d9a3569145e30be0c2e919a29f7b3bcf040a74b092c887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f094a7e4ccc963fde3762e86625af76b6339924bf13f1b7bd3c51dbcfda988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:05:42 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 06 Feb 2019 07:05:43 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Wed, 06 Feb 2019 07:05:45 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 06 Feb 2019 07:06:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:03 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Wed, 06 Feb 2019 07:06:03 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:04 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e2d50f1513ed58fc5b32041fd2640e9d5c76db416d6164fff9dbcc703dd186`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e3c992818066c2b2304c73c74346e59d2dda4e97abc54c6132d4a44444db46`  
		Last Modified: Wed, 06 Feb 2019 07:09:57 GMT  
		Size: 95.6 MB (95640817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60db6d282cd49a5625cc1b572c236758758bbf9b262567eb6c58b05fc99626b`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d32deab69c6d6a5e753b8d564ae8ad57487f9dc59ab0e32304972eb3b1c1361`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408a40cd2e9ce7a4099940aa92b466aaaf2b6fb93f4b3b41a708b4ac061176a8`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.15`

```console
$ docker pull mysql@sha256:a571337738c9205427c80748e165eca88edc5a1157f8b8d545fa127fc3e29269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.15` - linux; amd64

```console
$ docker pull mysql@sha256:8c7d6df5e7b7c41530d9a3569145e30be0c2e919a29f7b3bcf040a74b092c887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.1 MB (136053124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f094a7e4ccc963fde3762e86625af76b6339924bf13f1b7bd3c51dbcfda988`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:19 GMT
ADD file:5a6d066ba71fb0a4789971d41a896c905e3df4989b15e2079c09ddaad6ca3ccd in / 
# Wed, 06 Feb 2019 03:30:19 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 07:05:06 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 06 Feb 2019 07:05:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:12 GMT
ENV GOSU_VERSION=1.7
# Wed, 06 Feb 2019 07:05:29 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 06 Feb 2019 07:05:30 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 06 Feb 2019 07:05:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 07:05:42 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 06 Feb 2019 07:05:42 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 06 Feb 2019 07:05:43 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Wed, 06 Feb 2019 07:05:45 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 06 Feb 2019 07:06:01 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 06 Feb 2019 07:06:02 GMT
VOLUME [/var/lib/mysql]
# Wed, 06 Feb 2019 07:06:03 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Wed, 06 Feb 2019 07:06:03 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Wed, 06 Feb 2019 07:06:03 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 06 Feb 2019 07:06:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 06 Feb 2019 07:06:04 GMT
EXPOSE 3306 33060
# Wed, 06 Feb 2019 07:06:04 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:6ae821421a7debccb4151f7a50dc8ec0317674429bec0f275402d697047a8e96`  
		Last Modified: Wed, 06 Feb 2019 03:35:54 GMT  
		Size: 22.5 MB (22500288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e976e3aa6d5d9153f006b807cf8b626371b1e3bd541d806a7e27cb1c40666d`  
		Last Modified: Wed, 06 Feb 2019 07:09:39 GMT  
		Size: 1.7 KB (1743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3735e44a02057c208eb5cf969189eb56ce4d09b08326ab6fb60c328cc2c1b4e`  
		Last Modified: Wed, 06 Feb 2019 07:09:40 GMT  
		Size: 4.5 MB (4500976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd564e9483fa3f2ed64638dc13669b45d18258bb83889b7926756cdb1fee9cf`  
		Last Modified: Wed, 06 Feb 2019 07:09:38 GMT  
		Size: 1.3 MB (1270362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df705f26e488921e185a2147daf7bb4551547f679476a8d3d7692d3c3f8632e3`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c5547f73d627088206f9b133bc5106fd2c1473450feab308abeadb6047a825c`  
		Last Modified: Wed, 06 Feb 2019 07:09:41 GMT  
		Size: 12.1 MB (12108545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437382cf8a182fe16d41176a97f368792f343fe7057a905cc878018f36c1cee`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 26.1 KB (26080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e2d50f1513ed58fc5b32041fd2640e9d5c76db416d6164fff9dbcc703dd186`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2e3c992818066c2b2304c73c74346e59d2dda4e97abc54c6132d4a44444db46`  
		Last Modified: Wed, 06 Feb 2019 07:09:57 GMT  
		Size: 95.6 MB (95640817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b60db6d282cd49a5625cc1b572c236758758bbf9b262567eb6c58b05fc99626b`  
		Last Modified: Wed, 06 Feb 2019 07:09:36 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d32deab69c6d6a5e753b8d564ae8ad57487f9dc59ab0e32304972eb3b1c1361`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 3.0 KB (2953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:408a40cd2e9ce7a4099940aa92b466aaaf2b6fb93f4b3b41a708b4ac061176a8`  
		Last Modified: Wed, 06 Feb 2019 07:09:37 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:ac6197327b4782d868cd64942fb8b3fe2670384437e9ccc51d50217f05acc608
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

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
