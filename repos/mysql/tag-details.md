<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.6`](#mysql56)
-	[`mysql:5.6.44`](#mysql5644)
-	[`mysql:5.7`](#mysql57)
-	[`mysql:5.7.26`](#mysql5726)
-	[`mysql:8`](#mysql8)
-	[`mysql:8.0`](#mysql80)
-	[`mysql:8.0.16`](#mysql8016)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:c3594c6528b31c6222ba426d836600abd45f554d078ef661d3c882604c70ad0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:710c9ca6c4df66bf0c93df0d761e0519018fa2f0edb8015bb0db6c7c3919a8e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aa4f76fab910095dfcf4011f32fbe7acdb84c46bb685a8cf0a75e7d0da8f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Mon, 10 Jun 2019 23:45:22 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 10 Jun 2019 23:45:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:43 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:44 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0ebcbfc71601c2c02476b108c0f6964bd4a187725bc3bdeea41b20435eb6d`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559856d01c93bc15df8a3a5933641b8afe0f925e4c98d22bb3b04e452aa95700`  
		Last Modified: Mon, 10 Jun 2019 23:47:23 GMT  
		Size: 83.7 MB (83749999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c849d5f46e83f26cb9792af4937f6f17e936033bf36aa1c481c05690eda36299`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f114c210789a688d6b24af135ce256f285cf05cd2982d6b662c4d8b1f0553e83`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:e4a70c0f52bfda9ed28d2127b461ff44cbc381450e7ca22e83936560d8875f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:a5c683ba65b44dbd7fd09e62c1ab23def0f3957bab0f670ad5c92693ae230a4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82831847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1080b793fc4a10cab741a04ce090caf1ad2932cbcc679b6587624af9f6157`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:45:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:58 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:45:59 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 10 Jun 2019 23:45:59 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Mon, 10 Jun 2019 23:46:00 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:46:25 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 10 Jun 2019 23:46:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:46:25 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:46:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:46:27 GMT
EXPOSE 3306
# Mon, 10 Jun 2019 23:46:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345649b63bc3b040f1ec6621892ad657005c5c6f707e5d8fcc1d1d51b5b7eb21`  
		Last Modified: Mon, 10 Jun 2019 23:47:36 GMT  
		Size: 10.2 MB (10168835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a87fc59ec1810ebb02cfb88a30efa5bd8ea6e1208aad23086607645124662`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6019ecdb5901fcfab79fc7ea21ed7e1c6a861d8098a35b61314da24a007e98eb`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadc682b6a759c6d9f572a665a1da3eae0603b509ff06d5f974a1c74616e9638`  
		Last Modified: Mon, 10 Jun 2019 23:47:36 GMT  
		Size: 44.4 MB (44370185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0969183ab5f6f774417a2a4035c694577778233f0af2cf1a1b9699108f35092`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 2.9 KB (2856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01a78fff5a38ac5f471df1ff3dc4e9f1ece82eae5e9d55555ad6053d7dc5c5`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.44`

```console
$ docker pull mysql@sha256:e4a70c0f52bfda9ed28d2127b461ff44cbc381450e7ca22e83936560d8875f14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.44` - linux; amd64

```console
$ docker pull mysql@sha256:a5c683ba65b44dbd7fd09e62c1ab23def0f3957bab0f670ad5c92693ae230a4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82831847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ed1080b793fc4a10cab741a04ce090caf1ad2932cbcc679b6587624af9f6157`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:45:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:45:58 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:45:59 GMT
ENV MYSQL_MAJOR=5.6
# Mon, 10 Jun 2019 23:45:59 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Mon, 10 Jun 2019 23:46:00 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:46:25 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 10 Jun 2019 23:46:25 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:46:25 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:46:26 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:46:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:46:27 GMT
EXPOSE 3306
# Mon, 10 Jun 2019 23:46:27 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:345649b63bc3b040f1ec6621892ad657005c5c6f707e5d8fcc1d1d51b5b7eb21`  
		Last Modified: Mon, 10 Jun 2019 23:47:36 GMT  
		Size: 10.2 MB (10168835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:591a87fc59ec1810ebb02cfb88a30efa5bd8ea6e1208aad23086607645124662`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6019ecdb5901fcfab79fc7ea21ed7e1c6a861d8098a35b61314da24a007e98eb`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadc682b6a759c6d9f572a665a1da3eae0603b509ff06d5f974a1c74616e9638`  
		Last Modified: Mon, 10 Jun 2019 23:47:36 GMT  
		Size: 44.4 MB (44370185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0969183ab5f6f774417a2a4035c694577778233f0af2cf1a1b9699108f35092`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 2.9 KB (2856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a01a78fff5a38ac5f471df1ff3dc4e9f1ece82eae5e9d55555ad6053d7dc5c5`  
		Last Modified: Mon, 10 Jun 2019 23:47:28 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:c3594c6528b31c6222ba426d836600abd45f554d078ef661d3c882604c70ad0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:710c9ca6c4df66bf0c93df0d761e0519018fa2f0edb8015bb0db6c7c3919a8e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aa4f76fab910095dfcf4011f32fbe7acdb84c46bb685a8cf0a75e7d0da8f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Mon, 10 Jun 2019 23:45:22 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 10 Jun 2019 23:45:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:43 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:44 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0ebcbfc71601c2c02476b108c0f6964bd4a187725bc3bdeea41b20435eb6d`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559856d01c93bc15df8a3a5933641b8afe0f925e4c98d22bb3b04e452aa95700`  
		Last Modified: Mon, 10 Jun 2019 23:47:23 GMT  
		Size: 83.7 MB (83749999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c849d5f46e83f26cb9792af4937f6f17e936033bf36aa1c481c05690eda36299`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f114c210789a688d6b24af135ce256f285cf05cd2982d6b662c4d8b1f0553e83`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.26`

```console
$ docker pull mysql@sha256:c3594c6528b31c6222ba426d836600abd45f554d078ef661d3c882604c70ad0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.26` - linux; amd64

```console
$ docker pull mysql@sha256:710c9ca6c4df66bf0c93df0d761e0519018fa2f0edb8015bb0db6c7c3919a8e2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aa4f76fab910095dfcf4011f32fbe7acdb84c46bb685a8cf0a75e7d0da8f6b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_MAJOR=5.7
# Mon, 10 Jun 2019 23:45:21 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Mon, 10 Jun 2019 23:45:22 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 10 Jun 2019 23:45:43 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:43 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:44 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:44 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:44 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d0ebcbfc71601c2c02476b108c0f6964bd4a187725bc3bdeea41b20435eb6d`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559856d01c93bc15df8a3a5933641b8afe0f925e4c98d22bb3b04e452aa95700`  
		Last Modified: Mon, 10 Jun 2019 23:47:23 GMT  
		Size: 83.7 MB (83749999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c849d5f46e83f26cb9792af4937f6f17e936033bf36aa1c481c05690eda36299`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f114c210789a688d6b24af135ce256f285cf05cd2982d6b662c4d8b1f0553e83`  
		Last Modified: Mon, 10 Jun 2019 23:47:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:415ac63da0ae6725d5aefc9669a1c02f39a00c574fdbc478dfd08db1e97c8f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:98e9c25bb312a85d6660df5bb164b8c8e5486eaea611583e99e5070afc6ed9b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7109f74d339896c8e1a7526224f10a3197e7baf674ff03acbab387aa027882a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:44:55 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 10 Jun 2019 23:44:56 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Mon, 10 Jun 2019 23:44:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 10 Jun 2019 23:45:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:15 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 10 Jun 2019 23:45:15 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:17 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f18876c3ff1083c5a78c1576417ab64c238f3fb73afdd7cfd72e7b6a853e97`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78082f25f167ed18fe5ddf3eb0259ea83b7a34e36a42e433e76fbc9d05b6d12c`  
		Last Modified: Mon, 10 Jun 2019 23:47:01 GMT  
		Size: 89.0 MB (88989675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a510f055c1749fefbdff213f3bbf01bcfb00fb32f5ec4eebe23c450e2c85b4e`  
		Last Modified: Mon, 10 Jun 2019 23:46:38 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b0999e4336779383ee1f521277b03ecf2846063d88af2ea50f3f44eb7e59b`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864cfdc026419632d45b4eee97c1c2b3b68affd7868f7d4fe472b004f924e80`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:415ac63da0ae6725d5aefc9669a1c02f39a00c574fdbc478dfd08db1e97c8f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:98e9c25bb312a85d6660df5bb164b8c8e5486eaea611583e99e5070afc6ed9b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7109f74d339896c8e1a7526224f10a3197e7baf674ff03acbab387aa027882a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:44:55 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 10 Jun 2019 23:44:56 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Mon, 10 Jun 2019 23:44:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 10 Jun 2019 23:45:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:15 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 10 Jun 2019 23:45:15 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:17 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f18876c3ff1083c5a78c1576417ab64c238f3fb73afdd7cfd72e7b6a853e97`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78082f25f167ed18fe5ddf3eb0259ea83b7a34e36a42e433e76fbc9d05b6d12c`  
		Last Modified: Mon, 10 Jun 2019 23:47:01 GMT  
		Size: 89.0 MB (88989675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a510f055c1749fefbdff213f3bbf01bcfb00fb32f5ec4eebe23c450e2c85b4e`  
		Last Modified: Mon, 10 Jun 2019 23:46:38 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b0999e4336779383ee1f521277b03ecf2846063d88af2ea50f3f44eb7e59b`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864cfdc026419632d45b4eee97c1c2b3b68affd7868f7d4fe472b004f924e80`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.16`

```console
$ docker pull mysql@sha256:415ac63da0ae6725d5aefc9669a1c02f39a00c574fdbc478dfd08db1e97c8f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.16` - linux; amd64

```console
$ docker pull mysql@sha256:98e9c25bb312a85d6660df5bb164b8c8e5486eaea611583e99e5070afc6ed9b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7109f74d339896c8e1a7526224f10a3197e7baf674ff03acbab387aa027882a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:44:55 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 10 Jun 2019 23:44:56 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Mon, 10 Jun 2019 23:44:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 10 Jun 2019 23:45:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:15 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 10 Jun 2019 23:45:15 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:17 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f18876c3ff1083c5a78c1576417ab64c238f3fb73afdd7cfd72e7b6a853e97`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78082f25f167ed18fe5ddf3eb0259ea83b7a34e36a42e433e76fbc9d05b6d12c`  
		Last Modified: Mon, 10 Jun 2019 23:47:01 GMT  
		Size: 89.0 MB (88989675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a510f055c1749fefbdff213f3bbf01bcfb00fb32f5ec4eebe23c450e2c85b4e`  
		Last Modified: Mon, 10 Jun 2019 23:46:38 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b0999e4336779383ee1f521277b03ecf2846063d88af2ea50f3f44eb7e59b`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864cfdc026419632d45b4eee97c1c2b3b68affd7868f7d4fe472b004f924e80`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:415ac63da0ae6725d5aefc9669a1c02f39a00c574fdbc478dfd08db1e97c8f1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:98e9c25bb312a85d6660df5bb164b8c8e5486eaea611583e99e5070afc6ed9b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7109f74d339896c8e1a7526224f10a3197e7baf674ff03acbab387aa027882a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:23 GMT
ADD file:5ffb798d64089418ef4d3a261df5ad7cfa038eb2ef778db2b92604ac87228d99 in / 
# Mon, 10 Jun 2019 23:24:23 GMT
CMD ["bash"]
# Mon, 10 Jun 2019 23:44:19 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Mon, 10 Jun 2019 23:44:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:29 GMT
ENV GOSU_VERSION=1.7
# Mon, 10 Jun 2019 23:44:43 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Mon, 10 Jun 2019 23:44:43 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Mon, 10 Jun 2019 23:44:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 23:44:55 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Mon, 10 Jun 2019 23:44:55 GMT
ENV MYSQL_MAJOR=8.0
# Mon, 10 Jun 2019 23:44:56 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Mon, 10 Jun 2019 23:44:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 10 Jun 2019 23:45:15 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 10 Jun 2019 23:45:15 GMT
VOLUME [/var/lib/mysql]
# Mon, 10 Jun 2019 23:45:15 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 10 Jun 2019 23:45:15 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 10 Jun 2019 23:45:16 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 10 Jun 2019 23:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 10 Jun 2019 23:45:17 GMT
EXPOSE 3306 33060
# Mon, 10 Jun 2019 23:45:17 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:fc7181108d403205fda45b28dbddfa1cf07e772fa41244e44f53a341b8b1893d`  
		Last Modified: Mon, 10 Jun 2019 23:28:08 GMT  
		Size: 22.5 MB (22489302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a24c80112f841ccb00f57af3f3ee555c5a758adc0c70b4488834ca42c12cc`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a08cb039d3cd3acf3a5bf2ed1ff76fc1eb7ea0c6db0689de8c34f5f7a2138bd6`  
		Last Modified: Mon, 10 Jun 2019 23:46:42 GMT  
		Size: 4.5 MB (4501190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f7d35eb5394caab0079bcfc00af4bd30e83cc1b47a201a78c203efdff5649c8`  
		Last Modified: Mon, 10 Jun 2019 23:46:41 GMT  
		Size: 1.3 MB (1270331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aa21f895d959ad145996cdc9696faef2c27111fa6b46b16078f21566eb127c7`  
		Last Modified: Mon, 10 Jun 2019 23:46:40 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a742e211b7a2a0472b03b129be711404a2999f75d64cef2c1347af3d520aaf90`  
		Last Modified: Mon, 10 Jun 2019 23:46:49 GMT  
		Size: 12.1 MB (12108234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0163805ad937db6d515fb8a9d693ea2e7b43c1a014126ce26fa57a004e3f0da9`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 27.0 KB (26951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87f18876c3ff1083c5a78c1576417ab64c238f3fb73afdd7cfd72e7b6a853e97`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78082f25f167ed18fe5ddf3eb0259ea83b7a34e36a42e433e76fbc9d05b6d12c`  
		Last Modified: Mon, 10 Jun 2019 23:47:01 GMT  
		Size: 89.0 MB (88989675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a510f055c1749fefbdff213f3bbf01bcfb00fb32f5ec4eebe23c450e2c85b4e`  
		Last Modified: Mon, 10 Jun 2019 23:46:38 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:312b0999e4336779383ee1f521277b03ecf2846063d88af2ea50f3f44eb7e59b`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 3.0 KB (2951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f864cfdc026419632d45b4eee97c1c2b3b68affd7868f7d4fe472b004f924e80`  
		Last Modified: Mon, 10 Jun 2019 23:46:39 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
