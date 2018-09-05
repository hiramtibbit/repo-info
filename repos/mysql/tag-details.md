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
$ docker pull mysql@sha256:1d8f471c7e2929ee1e2bfbc1d16fc8afccd2e070afed24805487e726ce601a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:7df993452a3b3dd4f8bcb704f66a0452849e8a9b22924f41cf5c25684a7af3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563a026a1511f4e288304f1f325fc2a0769bbc9151f297519534b971b4d2160c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Wed, 05 Sep 2018 00:38:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:39:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 00:39:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:39:07 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:39:08 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:39:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0a9c25d8a57ce7bb86ddd5814dc0e1e54f46af83603517a4069afe6200e33`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce6c47ac3fc2e39b7fdc8e3f8c6c116f1d9b23e5231f01393bd11f76bc68805`  
		Last Modified: Wed, 05 Sep 2018 00:42:09 GMT  
		Size: 83.5 MB (83505982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499b9c7376c8625effb80f8712de5012411d8d6a1e785056d9f29faa71f7f925`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 2.9 KB (2875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5e08e005ea3cdfc2fe4074e8c2ab72dec0cfe13420fdc2ae8e675f83654c7f`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:e9e4aa5cec5ffd11fd02472abc74bff90dc0c448fdf157868ecf7d9d1ef018e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:7a0696084c7bd065b88ee23db360304275c7d03092fc1247df363edd74a5c313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8e987317d928ae51cd6ac972c19c341bb5d39846e2f9fa08dde5e3ea39051d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:40:03 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 05 Sep 2018 00:40:03 GMT
ENV MYSQL_VERSION=5.5.61
# Wed, 05 Sep 2018 00:40:47 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 05 Sep 2018 00:40:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 05 Sep 2018 00:40:48 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 05 Sep 2018 00:40:49 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:40:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:40:49 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:40:51 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 00:40:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f0a1ed712159500af0ee5b7560fc78d1dd8b339170c3a901a2c856e1169779`  
		Last Modified: Wed, 05 Sep 2018 00:42:50 GMT  
		Size: 10.3 MB (10291998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a191190d815fcd4f925732630df13d8a3686db082fb2b09da434164b88ea8`  
		Last Modified: Wed, 05 Sep 2018 00:42:51 GMT  
		Size: 27.5 MB (27476733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f387b1ed5bb1390b56a3162e502b635802616573bb3b2073580925c4750456`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea55d0aa829b98ebb24d0aeac8a3afe7e435b304fb2055aa4a4fc64e98585c`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d077f034175595a29fd25e216dd83c47ae1b48d139a867992ef7a72a96295`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ebb56e8e6a250ecd1b8b269125a54d5453597d102a8aa91ced4cfb3808d583`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.61`

```console
$ docker pull mysql@sha256:e9e4aa5cec5ffd11fd02472abc74bff90dc0c448fdf157868ecf7d9d1ef018e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.61` - linux; amd64

```console
$ docker pull mysql@sha256:7a0696084c7bd065b88ee23db360304275c7d03092fc1247df363edd74a5c313
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (66028792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8e987317d928ae51cd6ac972c19c341bb5d39846e2f9fa08dde5e3ea39051d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:40:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:40:03 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 05 Sep 2018 00:40:03 GMT
ENV MYSQL_VERSION=5.5.61
# Wed, 05 Sep 2018 00:40:47 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 05 Sep 2018 00:40:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 05 Sep 2018 00:40:48 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 05 Sep 2018 00:40:49 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:40:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:40:49 GMT
COPY file:e70284f7c1df11668f15a92670155242a47d7df6c3053ab35c1d800de1243018 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:40:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:40:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:40:51 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 00:40:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f0a1ed712159500af0ee5b7560fc78d1dd8b339170c3a901a2c856e1169779`  
		Last Modified: Wed, 05 Sep 2018 00:42:50 GMT  
		Size: 10.3 MB (10291998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27a191190d815fcd4f925732630df13d8a3686db082fb2b09da434164b88ea8`  
		Last Modified: Wed, 05 Sep 2018 00:42:51 GMT  
		Size: 27.5 MB (27476733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f387b1ed5bb1390b56a3162e502b635802616573bb3b2073580925c4750456`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ea55d0aa829b98ebb24d0aeac8a3afe7e435b304fb2055aa4a4fc64e98585c`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35d077f034175595a29fd25e216dd83c47ae1b48d139a867992ef7a72a96295`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09ebb56e8e6a250ecd1b8b269125a54d5453597d102a8aa91ced4cfb3808d583`  
		Last Modified: Wed, 05 Sep 2018 00:42:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:4c44f46efaff3ebe7cdc7b35a616c77aa003dc5de4b26c80d0ccae1f9db4a372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:7d811a4330f55a0fc0f5ae67bfd647398ea004c354380d7670a94aa05a2afd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47fade220d0ddedb916156cf4d7121a020afff03c19b4638ac494c5d1eca63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:39:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:39:27 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 05 Sep 2018 00:39:27 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Wed, 05 Sep 2018 00:39:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:39:49 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 00:39:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:39:49 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:39:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:39:50 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 00:39:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe5e46bae27115a07326547334380968a53e26efdf034a277c7cb6361d020`  
		Last Modified: Wed, 05 Sep 2018 00:42:26 GMT  
		Size: 10.2 MB (10169059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a334ca64271ffed5f77c286c9d3a7b918bcddc73af562af20639ba1be2d11a`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 23.2 KB (23201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115764d35d7a8e82b54978d7875d828278336da5293b655cab4d87b9a23ede98`  
		Last Modified: Wed, 05 Sep 2018 00:42:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719bba2efabc5a97572b98e0de50f6e2d53a39e72a53378c5ec16d5bebda5ffc`  
		Last Modified: Wed, 05 Sep 2018 00:42:37 GMT  
		Size: 44.2 MB (44214547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e66788ee1865e862b8e46cfa855652a4f3f9df140fefe311333445432c294`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f085ade122c6189cdac1daa2ad50fce29086e166e7a4893acad4bda6c03886d`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.41`

```console
$ docker pull mysql@sha256:4c44f46efaff3ebe7cdc7b35a616c77aa003dc5de4b26c80d0ccae1f9db4a372
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.41` - linux; amd64

```console
$ docker pull mysql@sha256:7d811a4330f55a0fc0f5ae67bfd647398ea004c354380d7670a94aa05a2afd6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82666648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f47fade220d0ddedb916156cf4d7121a020afff03c19b4638ac494c5d1eca63`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:39:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:39:27 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:39:27 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 05 Sep 2018 00:39:27 GMT
ENV MYSQL_VERSION=5.6.41-1debian9
# Wed, 05 Sep 2018 00:39:28 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:39:49 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 00:39:49 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:39:49 GMT
COPY file:b79e447a4154d7150da6897e9bfdeac5eef0ebd39bb505803fdb0315c929d983 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:39:50 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:39:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:39:50 GMT
EXPOSE 3306/tcp
# Wed, 05 Sep 2018 00:39:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f6fe5e46bae27115a07326547334380968a53e26efdf034a277c7cb6361d020`  
		Last Modified: Wed, 05 Sep 2018 00:42:26 GMT  
		Size: 10.2 MB (10169059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5a334ca64271ffed5f77c286c9d3a7b918bcddc73af562af20639ba1be2d11a`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 23.2 KB (23201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115764d35d7a8e82b54978d7875d828278336da5293b655cab4d87b9a23ede98`  
		Last Modified: Wed, 05 Sep 2018 00:42:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:719bba2efabc5a97572b98e0de50f6e2d53a39e72a53378c5ec16d5bebda5ffc`  
		Last Modified: Wed, 05 Sep 2018 00:42:37 GMT  
		Size: 44.2 MB (44214547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284e66788ee1865e862b8e46cfa855652a4f3f9df140fefe311333445432c294`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f085ade122c6189cdac1daa2ad50fce29086e166e7a4893acad4bda6c03886d`  
		Last Modified: Wed, 05 Sep 2018 00:42:20 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:1d8f471c7e2929ee1e2bfbc1d16fc8afccd2e070afed24805487e726ce601a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:7df993452a3b3dd4f8bcb704f66a0452849e8a9b22924f41cf5c25684a7af3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563a026a1511f4e288304f1f325fc2a0769bbc9151f297519534b971b4d2160c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Wed, 05 Sep 2018 00:38:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:39:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 00:39:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:39:07 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:39:08 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:39:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0a9c25d8a57ce7bb86ddd5814dc0e1e54f46af83603517a4069afe6200e33`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce6c47ac3fc2e39b7fdc8e3f8c6c116f1d9b23e5231f01393bd11f76bc68805`  
		Last Modified: Wed, 05 Sep 2018 00:42:09 GMT  
		Size: 83.5 MB (83505982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499b9c7376c8625effb80f8712de5012411d8d6a1e785056d9f29faa71f7f925`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 2.9 KB (2875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5e08e005ea3cdfc2fe4074e8c2ab72dec0cfe13420fdc2ae8e675f83654c7f`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.23`

```console
$ docker pull mysql@sha256:1d8f471c7e2929ee1e2bfbc1d16fc8afccd2e070afed24805487e726ce601a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.23` - linux; amd64

```console
$ docker pull mysql@sha256:7df993452a3b3dd4f8bcb704f66a0452849e8a9b22924f41cf5c25684a7af3fe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123880264 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:563a026a1511f4e288304f1f325fc2a0769bbc9151f297519534b971b4d2160c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 05 Sep 2018 00:38:36 GMT
ENV MYSQL_VERSION=5.7.23-1debian9
# Wed, 05 Sep 2018 00:38:37 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:39:06 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 05 Sep 2018 00:39:06 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:39:07 GMT
COPY file:4b5f8335c16a8bc9f76a2164458df1d71cf76facbf16d02f18ce7409122c2146 in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:39:07 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:39:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:39:08 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:39:08 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c0a9c25d8a57ce7bb86ddd5814dc0e1e54f46af83603517a4069afe6200e33`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce6c47ac3fc2e39b7fdc8e3f8c6c116f1d9b23e5231f01393bd11f76bc68805`  
		Last Modified: Wed, 05 Sep 2018 00:42:09 GMT  
		Size: 83.5 MB (83505982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:499b9c7376c8625effb80f8712de5012411d8d6a1e785056d9f29faa71f7f925`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 2.9 KB (2875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5e08e005ea3cdfc2fe4074e8c2ab72dec0cfe13420fdc2ae8e675f83654c7f`  
		Last Modified: Wed, 05 Sep 2018 00:41:49 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:038f5f6ea8c8f63cfce1bce9c057ab3691cad867e18da8ad4ba6c90874d0537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:59e5ff6c9d6177d4b98432d055233502451da5c32c3481055b41942785df9e77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a834f03bd02bb88cdbe0e289b9cd6056f1d42fa94792c524b4fddc474dab628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Wed, 05 Sep 2018 00:37:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:38:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:38:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:38:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 05 Sep 2018 00:38:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:38:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:38:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:38:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cd3c7302aa455ce5db582420f8a4405dd83a354f7d617374e26e2b0a86475d`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8263dad8dbbfe5edf5187ef7e2a2054d59ef9d72bc019f4202467bc172e03ef`  
		Last Modified: Wed, 05 Sep 2018 00:41:34 GMT  
		Size: 97.3 MB (97328992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f2f86056d502f924362510001e15fe055edb14b0eac4e8e64b6f249cc8345`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0761cb58cd15e8a315acb895c609786ef640b8fdd773e061f94b69759ae13c`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 2.9 KB (2946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7588cfc269e5e71903a9c75dcb126366f1c04e6d26d0db5636a6a747f9303789`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:038f5f6ea8c8f63cfce1bce9c057ab3691cad867e18da8ad4ba6c90874d0537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:59e5ff6c9d6177d4b98432d055233502451da5c32c3481055b41942785df9e77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a834f03bd02bb88cdbe0e289b9cd6056f1d42fa94792c524b4fddc474dab628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Wed, 05 Sep 2018 00:37:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:38:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:38:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:38:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 05 Sep 2018 00:38:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:38:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:38:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:38:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cd3c7302aa455ce5db582420f8a4405dd83a354f7d617374e26e2b0a86475d`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8263dad8dbbfe5edf5187ef7e2a2054d59ef9d72bc019f4202467bc172e03ef`  
		Last Modified: Wed, 05 Sep 2018 00:41:34 GMT  
		Size: 97.3 MB (97328992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f2f86056d502f924362510001e15fe055edb14b0eac4e8e64b6f249cc8345`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0761cb58cd15e8a315acb895c609786ef640b8fdd773e061f94b69759ae13c`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 2.9 KB (2946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7588cfc269e5e71903a9c75dcb126366f1c04e6d26d0db5636a6a747f9303789`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.12`

```console
$ docker pull mysql@sha256:038f5f6ea8c8f63cfce1bce9c057ab3691cad867e18da8ad4ba6c90874d0537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.12` - linux; amd64

```console
$ docker pull mysql@sha256:59e5ff6c9d6177d4b98432d055233502451da5c32c3481055b41942785df9e77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a834f03bd02bb88cdbe0e289b9cd6056f1d42fa94792c524b4fddc474dab628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Wed, 05 Sep 2018 00:37:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:38:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:38:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:38:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 05 Sep 2018 00:38:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:38:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:38:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:38:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cd3c7302aa455ce5db582420f8a4405dd83a354f7d617374e26e2b0a86475d`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8263dad8dbbfe5edf5187ef7e2a2054d59ef9d72bc019f4202467bc172e03ef`  
		Last Modified: Wed, 05 Sep 2018 00:41:34 GMT  
		Size: 97.3 MB (97328992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f2f86056d502f924362510001e15fe055edb14b0eac4e8e64b6f249cc8345`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0761cb58cd15e8a315acb895c609786ef640b8fdd773e061f94b69759ae13c`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 2.9 KB (2946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7588cfc269e5e71903a9c75dcb126366f1c04e6d26d0db5636a6a747f9303789`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:038f5f6ea8c8f63cfce1bce9c057ab3691cad867e18da8ad4ba6c90874d0537a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:59e5ff6c9d6177d4b98432d055233502451da5c32c3481055b41942785df9e77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.7 MB (137704235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a834f03bd02bb88cdbe0e289b9cd6056f1d42fa94792c524b4fddc474dab628`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:34 GMT
ADD file:e6ca98733431f75e97eb09758ba64065d213d51bd2070a95cf15f2ff5adccfc4 in / 
# Tue, 04 Sep 2018 21:21:34 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 00:37:20 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 05 Sep 2018 00:37:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:27 GMT
ENV GOSU_VERSION=1.7
# Wed, 05 Sep 2018 00:37:38 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 05 Sep 2018 00:37:38 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 05 Sep 2018 00:37:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 00:37:52 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_MAJOR=8.0
# Wed, 05 Sep 2018 00:37:52 GMT
ENV MYSQL_VERSION=8.0.12-1debian9
# Wed, 05 Sep 2018 00:37:53 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 05 Sep 2018 00:38:23 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 05 Sep 2018 00:38:23 GMT
VOLUME [/var/lib/mysql]
# Wed, 05 Sep 2018 00:38:24 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Wed, 05 Sep 2018 00:38:24 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Wed, 05 Sep 2018 00:38:25 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 05 Sep 2018 00:38:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 05 Sep 2018 00:38:25 GMT
EXPOSE 3306/tcp 33060/tcp
# Wed, 05 Sep 2018 00:38:25 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:802b00ed6f79f48e6a5f44ecbcaf43563d6077aaecb565eee1dfc615c0b18c00`  
		Last Modified: Tue, 04 Sep 2018 21:25:45 GMT  
		Size: 22.5 MB (22485965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f19a05b898876bcbed44d787394bf2655c34aa3334e5c5d33f213856ff3585`  
		Last Modified: Wed, 05 Sep 2018 00:41:08 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e43303be5e9eed187054f5d19ebfa02dec19dfa1a83ed6d88a69a588bc840a9`  
		Last Modified: Wed, 05 Sep 2018 00:41:09 GMT  
		Size: 4.5 MB (4498543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94b281824ae27d4ba5d8f09da927c173ff8912becbc23fccef8a690bc00b5c8e`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 1.3 MB (1270276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51eb397095b112a5047d725805bef05b7a1430617dc4b96afc56355e93e22633`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54567da6fdf0f9cc014f42de0d4c3398f5b22f913eed36937dd7f8ca7ea94119`  
		Last Modified: Wed, 05 Sep 2018 00:41:10 GMT  
		Size: 12.1 MB (12091217 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc57ddb85cceb38937031945bdd7d7e4cbae5ba2c3dd5598ad4a96a137cb5ee0`  
		Last Modified: Wed, 05 Sep 2018 00:41:07 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6cd3c7302aa455ce5db582420f8a4405dd83a354f7d617374e26e2b0a86475d`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8263dad8dbbfe5edf5187ef7e2a2054d59ef9d72bc019f4202467bc172e03ef`  
		Last Modified: Wed, 05 Sep 2018 00:41:34 GMT  
		Size: 97.3 MB (97328992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780f2f86056d502f924362510001e15fe055edb14b0eac4e8e64b6f249cc8345`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0761cb58cd15e8a315acb895c609786ef640b8fdd773e061f94b69759ae13c`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 2.9 KB (2946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7588cfc269e5e71903a9c75dcb126366f1c04e6d26d0db5636a6a747f9303789`  
		Last Modified: Wed, 05 Sep 2018 00:41:05 GMT  
		Size: 118.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
