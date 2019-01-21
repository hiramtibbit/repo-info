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
-	[`mysql:8.0.14`](#mysql8014)
-	[`mysql:latest`](#mysqllatest)

## `mysql:5`

```console
$ docker pull mysql@sha256:2be1926f174e36bc3deba7b5647bec62eac535da32fe442fb1dd62ca64371879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:53fa8d88879e28cdb8bf49be8ee68597ef67dcc93ebdfa3f2490007b9799d277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123893056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd9bd4c8a5ec2cce9599dd5aeaa83a6efd2822ba34bcce34cd8d0cd2938ba12`
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
# Mon, 21 Jan 2019 21:24:24 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Mon, 21 Jan 2019 21:24:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Jan 2019 21:24:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:42 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:43 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:43 GMT
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
	-	`sha256:8625fa4b3a80a13dd792d3ebf51fa77ae8d9c046a13f6e547fa827166df92515`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965fb8da65d26fc8387c02213c0e521531910e98cc3d27fbce84889d5f91b0b5`  
		Last Modified: Mon, 21 Jan 2019 21:25:58 GMT  
		Size: 83.5 MB (83490434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6939d00f505561942478b910f3f14d4e511b55e96db9bafdbbe5680fa91458de`  
		Last Modified: Mon, 21 Jan 2019 21:25:45 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1556b8fd6bd9400534759d3b612a58afb4392e2322e3f81b4cd52ae471299651`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
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
$ docker pull mysql@sha256:a0a65a5a2c07df8122f2b5235823236e6341fc14e85d4fd10620f04b3adbf0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:23f7913814fadfe3a8374f704d247730f4c2b9989a79fbd4d6d22724a6d57e17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82697436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9677fa5fdc5c5b208f1bae99fcab47582a4460f5890872bb52ceb77ea51598b`
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
# Mon, 21 Jan 2019 21:24:47 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Mon, 21 Jan 2019 21:24:48 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:25:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Jan 2019 21:25:05 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:25:05 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:25:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:25:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:25:07 GMT
EXPOSE 3306
# Mon, 21 Jan 2019 21:25:07 GMT
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
	-	`sha256:348ea74777b9af98b2d725e83a9ab91bcbe16325b0f525177cd2fb1675a299b5`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb20c8bb45532c6dde78bccc44c7d3cbadcd0a20f90d98ef2b17917c82a697bc`  
		Last Modified: Mon, 21 Jan 2019 21:26:11 GMT  
		Size: 44.2 MB (44234246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed7cb3e1d968a50f72fb0bbffbe09acc7ef38be23cc869c2c42493539e7b247`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 2.9 KB (2860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80a2b7cf112e58f1be3cfbfa2b2a464a058d7d9a6dbfd4601c620d9ff4133b9`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.43`

```console
$ docker pull mysql@sha256:a0a65a5a2c07df8122f2b5235823236e6341fc14e85d4fd10620f04b3adbf0a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.43` - linux; amd64

```console
$ docker pull mysql@sha256:23f7913814fadfe3a8374f704d247730f4c2b9989a79fbd4d6d22724a6d57e17
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.7 MB (82697436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9677fa5fdc5c5b208f1bae99fcab47582a4460f5890872bb52ceb77ea51598b`
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
# Mon, 21 Jan 2019 21:24:47 GMT
ENV MYSQL_VERSION=5.6.43-1debian9
# Mon, 21 Jan 2019 21:24:48 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:25:05 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Jan 2019 21:25:05 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:25:05 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:25:06 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:25:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:25:07 GMT
EXPOSE 3306
# Mon, 21 Jan 2019 21:25:07 GMT
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
	-	`sha256:348ea74777b9af98b2d725e83a9ab91bcbe16325b0f525177cd2fb1675a299b5`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 224.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb20c8bb45532c6dde78bccc44c7d3cbadcd0a20f90d98ef2b17917c82a697bc`  
		Last Modified: Mon, 21 Jan 2019 21:26:11 GMT  
		Size: 44.2 MB (44234246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ed7cb3e1d968a50f72fb0bbffbe09acc7ef38be23cc869c2c42493539e7b247`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 2.9 KB (2860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d80a2b7cf112e58f1be3cfbfa2b2a464a058d7d9a6dbfd4601c620d9ff4133b9`  
		Last Modified: Mon, 21 Jan 2019 21:26:03 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:2be1926f174e36bc3deba7b5647bec62eac535da32fe442fb1dd62ca64371879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:53fa8d88879e28cdb8bf49be8ee68597ef67dcc93ebdfa3f2490007b9799d277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123893056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd9bd4c8a5ec2cce9599dd5aeaa83a6efd2822ba34bcce34cd8d0cd2938ba12`
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
# Mon, 21 Jan 2019 21:24:24 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Mon, 21 Jan 2019 21:24:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Jan 2019 21:24:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:42 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:43 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:43 GMT
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
	-	`sha256:8625fa4b3a80a13dd792d3ebf51fa77ae8d9c046a13f6e547fa827166df92515`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965fb8da65d26fc8387c02213c0e521531910e98cc3d27fbce84889d5f91b0b5`  
		Last Modified: Mon, 21 Jan 2019 21:25:58 GMT  
		Size: 83.5 MB (83490434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6939d00f505561942478b910f3f14d4e511b55e96db9bafdbbe5680fa91458de`  
		Last Modified: Mon, 21 Jan 2019 21:25:45 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1556b8fd6bd9400534759d3b612a58afb4392e2322e3f81b4cd52ae471299651`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.25`

```console
$ docker pull mysql@sha256:2be1926f174e36bc3deba7b5647bec62eac535da32fe442fb1dd62ca64371879
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.25` - linux; amd64

```console
$ docker pull mysql@sha256:53fa8d88879e28cdb8bf49be8ee68597ef67dcc93ebdfa3f2490007b9799d277
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.9 MB (123893056 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cd9bd4c8a5ec2cce9599dd5aeaa83a6efd2822ba34bcce34cd8d0cd2938ba12`
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
# Mon, 21 Jan 2019 21:24:24 GMT
ENV MYSQL_VERSION=5.7.25-1debian9
# Mon, 21 Jan 2019 21:24:25 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:41 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Mon, 21 Jan 2019 21:24:41 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:42 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:42 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:43 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:43 GMT
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
	-	`sha256:8625fa4b3a80a13dd792d3ebf51fa77ae8d9c046a13f6e547fa827166df92515`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:965fb8da65d26fc8387c02213c0e521531910e98cc3d27fbce84889d5f91b0b5`  
		Last Modified: Mon, 21 Jan 2019 21:25:58 GMT  
		Size: 83.5 MB (83490434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6939d00f505561942478b910f3f14d4e511b55e96db9bafdbbe5680fa91458de`  
		Last Modified: Mon, 21 Jan 2019 21:25:45 GMT  
		Size: 2.9 KB (2876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1556b8fd6bd9400534759d3b612a58afb4392e2322e3f81b4cd52ae471299651`  
		Last Modified: Mon, 21 Jan 2019 21:25:44 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:a0566c116e35afa7c81cba44004c64b6f70c0791146f806d77c04a61c7547016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:78e43c2164911173155564a25cb57f6640e5ce573856c4c753b286a0c6a97b91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136046341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06c3c789716edfe9bf07bca224741bc61d096068753c57b2bf9ac9e6e37ce0c`
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
# Mon, 21 Jan 2019 21:24:01 GMT
ENV MYSQL_VERSION=8.0.14-1debian9
# Mon, 21 Jan 2019 21:24:01 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Jan 2019 21:24:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:17 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 21 Jan 2019 21:24:17 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:18 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:18 GMT
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
	-	`sha256:11686784eebae65d8d00b4f763e244066522a408c90603b4aca83523fae9b6d4`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f749d907cbce109706a32caca48f29613e9f4b8a06b2174cb0e5ae0448e31f55`  
		Last Modified: Mon, 21 Jan 2019 21:25:38 GMT  
		Size: 95.6 MB (95642743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999da45e19547993e735b600375ae1fd09921d5fce48ef8594f7dc1597d661e9`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee5a17b62c3163149abfe97220b89a0f2eb0fead38b8d51dd4698783075d5b3`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a277d4170bbc867be916e7a76d5c54cdb34ad44f911febe7347b5edcc41d40`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:a0566c116e35afa7c81cba44004c64b6f70c0791146f806d77c04a61c7547016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:78e43c2164911173155564a25cb57f6640e5ce573856c4c753b286a0c6a97b91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136046341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06c3c789716edfe9bf07bca224741bc61d096068753c57b2bf9ac9e6e37ce0c`
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
# Mon, 21 Jan 2019 21:24:01 GMT
ENV MYSQL_VERSION=8.0.14-1debian9
# Mon, 21 Jan 2019 21:24:01 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Jan 2019 21:24:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:17 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 21 Jan 2019 21:24:17 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:18 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:18 GMT
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
	-	`sha256:11686784eebae65d8d00b4f763e244066522a408c90603b4aca83523fae9b6d4`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f749d907cbce109706a32caca48f29613e9f4b8a06b2174cb0e5ae0448e31f55`  
		Last Modified: Mon, 21 Jan 2019 21:25:38 GMT  
		Size: 95.6 MB (95642743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999da45e19547993e735b600375ae1fd09921d5fce48ef8594f7dc1597d661e9`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee5a17b62c3163149abfe97220b89a0f2eb0fead38b8d51dd4698783075d5b3`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a277d4170bbc867be916e7a76d5c54cdb34ad44f911febe7347b5edcc41d40`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.14`

```console
$ docker pull mysql@sha256:a0566c116e35afa7c81cba44004c64b6f70c0791146f806d77c04a61c7547016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.14` - linux; amd64

```console
$ docker pull mysql@sha256:78e43c2164911173155564a25cb57f6640e5ce573856c4c753b286a0c6a97b91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136046341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06c3c789716edfe9bf07bca224741bc61d096068753c57b2bf9ac9e6e37ce0c`
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
# Mon, 21 Jan 2019 21:24:01 GMT
ENV MYSQL_VERSION=8.0.14-1debian9
# Mon, 21 Jan 2019 21:24:01 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Jan 2019 21:24:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:17 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 21 Jan 2019 21:24:17 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:18 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:18 GMT
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
	-	`sha256:11686784eebae65d8d00b4f763e244066522a408c90603b4aca83523fae9b6d4`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f749d907cbce109706a32caca48f29613e9f4b8a06b2174cb0e5ae0448e31f55`  
		Last Modified: Mon, 21 Jan 2019 21:25:38 GMT  
		Size: 95.6 MB (95642743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999da45e19547993e735b600375ae1fd09921d5fce48ef8594f7dc1597d661e9`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee5a17b62c3163149abfe97220b89a0f2eb0fead38b8d51dd4698783075d5b3`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a277d4170bbc867be916e7a76d5c54cdb34ad44f911febe7347b5edcc41d40`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:a0566c116e35afa7c81cba44004c64b6f70c0791146f806d77c04a61c7547016
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:78e43c2164911173155564a25cb57f6640e5ce573856c4c753b286a0c6a97b91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136046341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d06c3c789716edfe9bf07bca224741bc61d096068753c57b2bf9ac9e6e37ce0c`
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
# Mon, 21 Jan 2019 21:24:01 GMT
ENV MYSQL_VERSION=8.0.14-1debian9
# Mon, 21 Jan 2019 21:24:01 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Mon, 21 Jan 2019 21:24:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Mon, 21 Jan 2019 21:24:17 GMT
VOLUME [/var/lib/mysql]
# Mon, 21 Jan 2019 21:24:17 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Mon, 21 Jan 2019 21:24:17 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Mon, 21 Jan 2019 21:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Mon, 21 Jan 2019 21:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 21 Jan 2019 21:24:18 GMT
EXPOSE 3306 33060
# Mon, 21 Jan 2019 21:24:18 GMT
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
	-	`sha256:11686784eebae65d8d00b4f763e244066522a408c90603b4aca83523fae9b6d4`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f749d907cbce109706a32caca48f29613e9f4b8a06b2174cb0e5ae0448e31f55`  
		Last Modified: Mon, 21 Jan 2019 21:25:38 GMT  
		Size: 95.6 MB (95642743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999da45e19547993e735b600375ae1fd09921d5fce48ef8594f7dc1597d661e9`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee5a17b62c3163149abfe97220b89a0f2eb0fead38b8d51dd4698783075d5b3`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a277d4170bbc867be916e7a76d5c54cdb34ad44f911febe7347b5edcc41d40`  
		Last Modified: Mon, 21 Jan 2019 21:25:18 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
