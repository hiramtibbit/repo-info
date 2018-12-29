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
$ docker pull mysql@sha256:bf17a7109057494c45fba5aab7fc805ca00ac1eef638dfdd42b38d5a7190c9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:1f627f590dac0b2c4659282258ce205033adf94ebe8775a3e3a8424a87cdd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123967993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7a93aae2a8842957a4cb908e6fbb37db2a7677b2a1f1ac7fb88283a0861e42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:36 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 29 Dec 2018 02:21:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Sat, 29 Dec 2018 02:21:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:22:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 02:22:04 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:22:04 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:22:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:22:05 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:22:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d2f77e0e7f15da977072beed497a94bf84f0b35349fdd6c1ffcf0437c5f3e`  
		Last Modified: Sat, 29 Dec 2018 02:24:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e648ad64aa7fc69805c62b1b656c8717d204a02f877f9aff3d1ecf3d3f186d`  
		Last Modified: Sat, 29 Dec 2018 02:25:04 GMT  
		Size: 83.6 MB (83565370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4120d828ea6b1e9400b3b715c25b3d9a9f44cbaa90441aefb6b297d8f8430705`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39dc5451af28bd7597c9a13deeac8ceb5edb5f0a02d91764d83054fb2c6dc8`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:3216cd4f63274b96a8eed2a06005d1f46f2c0611d90f7d1d11746350159caa6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:4a226e9e8cdaac92c1418bdb5490eced56d9692c93690dfe84e845bf0536b392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66075576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6ff3f79840dba68c8e4ef10f5a9b69429258396c80d5aaaf6d1ef68003b216`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:23:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:23:04 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 29 Dec 2018 02:23:04 GMT
ENV MYSQL_VERSION=5.5.62
# Sat, 29 Dec 2018 02:23:49 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 29 Dec 2018 02:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 29 Dec 2018 02:23:50 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 29 Dec 2018 02:23:51 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:23:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:23:52 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:23:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:23:53 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 02:23:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e188b43658a8d1f2e9faee1514b7ce36f8d162668840b617488b256adab3628`  
		Last Modified: Sat, 29 Dec 2018 02:25:38 GMT  
		Size: 10.3 MB (10293296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a52f46aac101c3c86fbf71ed092c1c3b4b50151fdcc4a99704f26d9a074c90`  
		Last Modified: Sat, 29 Dec 2018 02:25:40 GMT  
		Size: 27.5 MB (27512841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a900707a42e95027c8450e1c1c11723b5bcc35e4075688189bf8a044a1760c`  
		Last Modified: Sat, 29 Dec 2018 02:25:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a34718a16c0f7f66a87733e347d666af198bb4177520829a60815301ef95a85`  
		Last Modified: Sat, 29 Dec 2018 02:25:34 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d3b494acca2f1ca53d47dba5e27cfcb6671a37fb4fd78546db23f3dac1e30a`  
		Last Modified: Sat, 29 Dec 2018 02:25:33 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11205562f8df5c1d90320e599f949b6acd551b5275234294d92830fa962237f2`  
		Last Modified: Sat, 29 Dec 2018 02:25:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:3216cd4f63274b96a8eed2a06005d1f46f2c0611d90f7d1d11746350159caa6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:4a226e9e8cdaac92c1418bdb5490eced56d9692c93690dfe84e845bf0536b392
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66075576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b6ff3f79840dba68c8e4ef10f5a9b69429258396c80d5aaaf6d1ef68003b216`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:23:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:23:04 GMT
ENV MYSQL_MAJOR=5.5
# Sat, 29 Dec 2018 02:23:04 GMT
ENV MYSQL_VERSION=5.5.62
# Sat, 29 Dec 2018 02:23:49 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Sat, 29 Dec 2018 02:23:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Sat, 29 Dec 2018 02:23:50 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Sat, 29 Dec 2018 02:23:51 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:23:51 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:23:52 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:23:53 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:23:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:23:53 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 02:23:54 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e188b43658a8d1f2e9faee1514b7ce36f8d162668840b617488b256adab3628`  
		Last Modified: Sat, 29 Dec 2018 02:25:38 GMT  
		Size: 10.3 MB (10293296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a52f46aac101c3c86fbf71ed092c1c3b4b50151fdcc4a99704f26d9a074c90`  
		Last Modified: Sat, 29 Dec 2018 02:25:40 GMT  
		Size: 27.5 MB (27512841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0a900707a42e95027c8450e1c1c11723b5bcc35e4075688189bf8a044a1760c`  
		Last Modified: Sat, 29 Dec 2018 02:25:34 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a34718a16c0f7f66a87733e347d666af198bb4177520829a60815301ef95a85`  
		Last Modified: Sat, 29 Dec 2018 02:25:34 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d3b494acca2f1ca53d47dba5e27cfcb6671a37fb4fd78546db23f3dac1e30a`  
		Last Modified: Sat, 29 Dec 2018 02:25:33 GMT  
		Size: 2.9 KB (2885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11205562f8df5c1d90320e599f949b6acd551b5275234294d92830fa962237f2`  
		Last Modified: Sat, 29 Dec 2018 02:25:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:3188255bd739bfb6a8d964f21a314ce618205afb2c51f4a57e87019163c5ca34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:1f937547a80cf6e564dea15d5e3f5f09492cc5ddf57c44289c5467eab52a1355
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82698678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e29668a08a67851c5759362d07ac19b02a26310a8de09d3e8b924b92c4b797`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:22:22 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:22:22 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 29 Dec 2018 02:22:22 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Sat, 29 Dec 2018 02:22:23 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:22:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 02:22:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:22:47 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:22:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:22:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:22:49 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 02:22:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ec9776c6b396eb683ef3187ccdfe837529b39066af087dffc2c24b3d03c7ec`  
		Last Modified: Sat, 29 Dec 2018 02:25:22 GMT  
		Size: 10.2 MB (10168771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81a89945365cba831ba21175afc9ce358af6c970c7114e1c3e9b263e8e3dff8`  
		Last Modified: Sat, 29 Dec 2018 02:25:18 GMT  
		Size: 25.2 KB (25194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5ab6567ca59e18230ac8938a0118a5e5396fdef76296c1738fb67d388f3b9`  
		Last Modified: Sat, 29 Dec 2018 02:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5caf5e4c5eb09185769e6f1d0f20d1933e20da1aeba8e2b63d2d343bedee8507`  
		Last Modified: Sat, 29 Dec 2018 02:25:28 GMT  
		Size: 44.2 MB (44235487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9295ceea71e23fa72010ced4583411608951402dbaab5ca882af17b6f23e7281`  
		Last Modified: Sat, 29 Dec 2018 02:25:17 GMT  
		Size: 2.9 KB (2860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb029976ca26c6459b20762f6d1a555ac1a1289c0e9d37555e71d5c5571fdaa9`  
		Last Modified: Sat, 29 Dec 2018 02:25:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.42`

```console
$ docker pull mysql@sha256:3188255bd739bfb6a8d964f21a314ce618205afb2c51f4a57e87019163c5ca34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.42` - linux; amd64

```console
$ docker pull mysql@sha256:1f937547a80cf6e564dea15d5e3f5f09492cc5ddf57c44289c5467eab52a1355
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82698678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e29668a08a67851c5759362d07ac19b02a26310a8de09d3e8b924b92c4b797`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:22:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:22:22 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:22:22 GMT
ENV MYSQL_MAJOR=5.6
# Sat, 29 Dec 2018 02:22:22 GMT
ENV MYSQL_VERSION=5.6.42-1debian9
# Sat, 29 Dec 2018 02:22:23 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:22:46 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 02:22:47 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:22:47 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:22:48 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:22:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:22:49 GMT
EXPOSE 3306
# Sat, 29 Dec 2018 02:22:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50ec9776c6b396eb683ef3187ccdfe837529b39066af087dffc2c24b3d03c7ec`  
		Last Modified: Sat, 29 Dec 2018 02:25:22 GMT  
		Size: 10.2 MB (10168771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b81a89945365cba831ba21175afc9ce358af6c970c7114e1c3e9b263e8e3dff8`  
		Last Modified: Sat, 29 Dec 2018 02:25:18 GMT  
		Size: 25.2 KB (25194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f5ab6567ca59e18230ac8938a0118a5e5396fdef76296c1738fb67d388f3b9`  
		Last Modified: Sat, 29 Dec 2018 02:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5caf5e4c5eb09185769e6f1d0f20d1933e20da1aeba8e2b63d2d343bedee8507`  
		Last Modified: Sat, 29 Dec 2018 02:25:28 GMT  
		Size: 44.2 MB (44235487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9295ceea71e23fa72010ced4583411608951402dbaab5ca882af17b6f23e7281`  
		Last Modified: Sat, 29 Dec 2018 02:25:17 GMT  
		Size: 2.9 KB (2860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb029976ca26c6459b20762f6d1a555ac1a1289c0e9d37555e71d5c5571fdaa9`  
		Last Modified: Sat, 29 Dec 2018 02:25:17 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:bf17a7109057494c45fba5aab7fc805ca00ac1eef638dfdd42b38d5a7190c9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:1f627f590dac0b2c4659282258ce205033adf94ebe8775a3e3a8424a87cdd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123967993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7a93aae2a8842957a4cb908e6fbb37db2a7677b2a1f1ac7fb88283a0861e42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:36 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 29 Dec 2018 02:21:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Sat, 29 Dec 2018 02:21:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:22:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 02:22:04 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:22:04 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:22:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:22:05 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:22:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d2f77e0e7f15da977072beed497a94bf84f0b35349fdd6c1ffcf0437c5f3e`  
		Last Modified: Sat, 29 Dec 2018 02:24:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e648ad64aa7fc69805c62b1b656c8717d204a02f877f9aff3d1ecf3d3f186d`  
		Last Modified: Sat, 29 Dec 2018 02:25:04 GMT  
		Size: 83.6 MB (83565370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4120d828ea6b1e9400b3b715c25b3d9a9f44cbaa90441aefb6b297d8f8430705`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39dc5451af28bd7597c9a13deeac8ceb5edb5f0a02d91764d83054fb2c6dc8`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.24`

```console
$ docker pull mysql@sha256:bf17a7109057494c45fba5aab7fc805ca00ac1eef638dfdd42b38d5a7190c9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.24` - linux; amd64

```console
$ docker pull mysql@sha256:1f627f590dac0b2c4659282258ce205033adf94ebe8775a3e3a8424a87cdd746
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.0 MB (123967993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba7a93aae2a8842957a4cb908e6fbb37db2a7677b2a1f1ac7fb88283a0861e42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:36 GMT
ENV MYSQL_MAJOR=5.7
# Sat, 29 Dec 2018 02:21:37 GMT
ENV MYSQL_VERSION=5.7.24-1debian9
# Sat, 29 Dec 2018 02:21:38 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:22:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Sat, 29 Dec 2018 02:22:04 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:22:04 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:22:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:22:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:22:05 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:22:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a9d2f77e0e7f15da977072beed497a94bf84f0b35349fdd6c1ffcf0437c5f3e`  
		Last Modified: Sat, 29 Dec 2018 02:24:45 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7e648ad64aa7fc69805c62b1b656c8717d204a02f877f9aff3d1ecf3d3f186d`  
		Last Modified: Sat, 29 Dec 2018 02:25:04 GMT  
		Size: 83.6 MB (83565370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4120d828ea6b1e9400b3b715c25b3d9a9f44cbaa90441aefb6b297d8f8430705`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b39dc5451af28bd7597c9a13deeac8ceb5edb5f0a02d91764d83054fb2c6dc8`  
		Last Modified: Sat, 29 Dec 2018 02:24:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:196c04e1944c5e4ea3ab86ae5f78f697cf18ee43865f25e334a6ffb1dbea81e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:a89f2e9c8fab518db0cb0a5ef7dbadcd219b13545e3b7381ae75b4a4f2763e18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138330540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102816b1ee7d6f5943c251647275f0d112f4617bb4ab3f7583206404b7834732`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Sat, 29 Dec 2018 02:21:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:21:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:21:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:21:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Sat, 29 Dec 2018 02:21:26 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:21:28 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:21:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f3f3d72fbdf60d6dfeea4c66a75955b9da356c519f5a0204561432d28fecbc`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f098d642682ebbbb2c229503737b6ec36ad39ee0fb64186dd5eca871bcfdcb`  
		Last Modified: Sat, 29 Dec 2018 02:24:36 GMT  
		Size: 97.9 MB (97926950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a52a54cfe90dd74f52edfeff0aef067dd2472c18608ead1d3dc6e7e40e6ca9`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202bc662895d883a90cf77492cfa91ed4c4601054241a558640913e738908646`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46014f07b25887cf3afb6848d85b2cab4ef95a89f4caddda5c7dc067dcc58361`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:196c04e1944c5e4ea3ab86ae5f78f697cf18ee43865f25e334a6ffb1dbea81e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:a89f2e9c8fab518db0cb0a5ef7dbadcd219b13545e3b7381ae75b4a4f2763e18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138330540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102816b1ee7d6f5943c251647275f0d112f4617bb4ab3f7583206404b7834732`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Sat, 29 Dec 2018 02:21:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:21:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:21:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:21:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Sat, 29 Dec 2018 02:21:26 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:21:28 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:21:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f3f3d72fbdf60d6dfeea4c66a75955b9da356c519f5a0204561432d28fecbc`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f098d642682ebbbb2c229503737b6ec36ad39ee0fb64186dd5eca871bcfdcb`  
		Last Modified: Sat, 29 Dec 2018 02:24:36 GMT  
		Size: 97.9 MB (97926950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a52a54cfe90dd74f52edfeff0aef067dd2472c18608ead1d3dc6e7e40e6ca9`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202bc662895d883a90cf77492cfa91ed4c4601054241a558640913e738908646`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46014f07b25887cf3afb6848d85b2cab4ef95a89f4caddda5c7dc067dcc58361`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.13`

```console
$ docker pull mysql@sha256:196c04e1944c5e4ea3ab86ae5f78f697cf18ee43865f25e334a6ffb1dbea81e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.13` - linux; amd64

```console
$ docker pull mysql@sha256:a89f2e9c8fab518db0cb0a5ef7dbadcd219b13545e3b7381ae75b4a4f2763e18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138330540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102816b1ee7d6f5943c251647275f0d112f4617bb4ab3f7583206404b7834732`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Sat, 29 Dec 2018 02:21:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:21:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:21:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:21:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Sat, 29 Dec 2018 02:21:26 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:21:28 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:21:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f3f3d72fbdf60d6dfeea4c66a75955b9da356c519f5a0204561432d28fecbc`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f098d642682ebbbb2c229503737b6ec36ad39ee0fb64186dd5eca871bcfdcb`  
		Last Modified: Sat, 29 Dec 2018 02:24:36 GMT  
		Size: 97.9 MB (97926950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a52a54cfe90dd74f52edfeff0aef067dd2472c18608ead1d3dc6e7e40e6ca9`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202bc662895d883a90cf77492cfa91ed4c4601054241a558640913e738908646`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46014f07b25887cf3afb6848d85b2cab4ef95a89f4caddda5c7dc067dcc58361`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:196c04e1944c5e4ea3ab86ae5f78f697cf18ee43865f25e334a6ffb1dbea81e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:a89f2e9c8fab518db0cb0a5ef7dbadcd219b13545e3b7381ae75b4a4f2763e18
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.3 MB (138330540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:102816b1ee7d6f5943c251647275f0d112f4617bb4ab3f7583206404b7834732`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Fri, 28 Dec 2018 23:30:06 GMT
ADD file:6d6f6f123e45697d3e73ea24621e4fd8da0ed5cf7504767f6b3120671fe6e7d1 in / 
# Fri, 28 Dec 2018 23:30:06 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 02:20:23 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Sat, 29 Dec 2018 02:20:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:20:32 GMT
ENV GOSU_VERSION=1.7
# Sat, 29 Dec 2018 02:20:49 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Sat, 29 Dec 2018 02:20:50 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Sat, 29 Dec 2018 02:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:21:03 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_MAJOR=8.0
# Sat, 29 Dec 2018 02:21:03 GMT
ENV MYSQL_VERSION=8.0.13-1debian9
# Sat, 29 Dec 2018 02:21:05 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Sat, 29 Dec 2018 02:21:26 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Sat, 29 Dec 2018 02:21:26 GMT
VOLUME [/var/lib/mysql]
# Sat, 29 Dec 2018 02:21:26 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Sat, 29 Dec 2018 02:21:26 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Sat, 29 Dec 2018 02:21:27 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Sat, 29 Dec 2018 02:21:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Dec 2018 02:21:28 GMT
EXPOSE 3306 33060
# Sat, 29 Dec 2018 02:21:28 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:177e7ef0df6987e0c5738a1fb5aba98b6b6e7a5fef992e481977dbb5ba3f91be`  
		Last Modified: Fri, 28 Dec 2018 23:36:01 GMT  
		Size: 22.5 MB (22492916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac25352c4c87d90c7ef528350605711b06a4269b39ad54c65dca94528daf998`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.7 KB (1742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8585afabb40aa039890e2d6d46924717edd508633ac28db8112ac48b8ba824fc`  
		Last Modified: Sat, 29 Dec 2018 02:24:11 GMT  
		Size: 4.5 MB (4500936 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e4af4996053e1ce2e35b6523fb556be222d137b86efe4bf306b9a2bd895f98c`  
		Last Modified: Sat, 29 Dec 2018 02:24:10 GMT  
		Size: 1.3 MB (1270311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c326522894da7730bbec0ecad2914468e11ade7c9e9c9f707227e777bedb041a`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9020d6b6b1714fbfe1be15a8e508da2388bb5d2ecb625603bb2f3806c840af02`  
		Last Modified: Sat, 29 Dec 2018 02:24:13 GMT  
		Size: 12.1 MB (12108190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55eb37ec6e5f8c6ec36d8ffe75e06f398f79d49f491f14e1596ed51f20c3ce77`  
		Last Modified: Sat, 29 Dec 2018 02:24:09 GMT  
		Size: 25.2 KB (25193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37f3f3d72fbdf60d6dfeea4c66a75955b9da356c519f5a0204561432d28fecbc`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03f098d642682ebbbb2c229503737b6ec36ad39ee0fb64186dd5eca871bcfdcb`  
		Last Modified: Sat, 29 Dec 2018 02:24:36 GMT  
		Size: 97.9 MB (97926950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a52a54cfe90dd74f52edfeff0aef067dd2472c18608ead1d3dc6e7e40e6ca9`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202bc662895d883a90cf77492cfa91ed4c4601054241a558640913e738908646`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 2.9 KB (2948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46014f07b25887cf3afb6848d85b2cab4ef95a89f4caddda5c7dc067dcc58361`  
		Last Modified: Sat, 29 Dec 2018 02:24:08 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
