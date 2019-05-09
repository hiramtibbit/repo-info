<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `mysql`

-	[`mysql:5`](#mysql5)
-	[`mysql:5.5`](#mysql55)
-	[`mysql:5.5.62`](#mysql5562)
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
$ docker pull mysql@sha256:204f5c77fe589c202e2ebc8b6b7dcdc442d67c07168916a302ede26b3e9ab168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:78ff5aa8e65b9e99775f24044591533ae5c35a1ae0264e73747b56215f0489ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faa3c53e6d699fe92d49a361e427c3af937c6cea9517f092e8013b1fff1c4d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Wed, 08 May 2019 01:01:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 08 May 2019 01:02:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 08 May 2019 01:02:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:02:17 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 08 May 2019 01:02:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:02:18 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 01:02:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38e9cfd49b5c0f277ac29a73f92a9bbecaa679ad9c16abca567e2ea933a724`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4834b3f44fee072ed7382eab5c373cb7b16893090e331e71bd71b30ea39263`  
		Last Modified: Wed, 08 May 2019 01:05:45 GMT  
		Size: 83.7 MB (83749913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af631d92fdbaf900074b05663becdcc2f08f09e3dcc81d6ad0757df8caa0b486`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e771ddab25c0c6632bf1b303f4de312ff52d55253aa1e50d0a05a00e13e1760`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:e3a7b2dd5ea78bcdf80ee2846ff5c60dbdd5b07b138a7e0abdeaa3c0f958bbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:c9c671d0c959183154313d6830d46f9a00d5937f97415c15ebd3c6844f6f1467
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66072546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d404d78aa797c87c255e5ae2beb5d8d0e4d095f930b1f20dc208eaa957477b74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:03:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:03:00 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 08 May 2019 01:03:01 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 08 May 2019 01:05:11 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 08 May 2019 01:05:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 08 May 2019 01:05:12 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 08 May 2019 01:05:12 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 08 May 2019 01:05:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:05:13 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 08 May 2019 01:05:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:05:14 GMT
EXPOSE 3306
# Wed, 08 May 2019 01:05:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da1e065b16051bca91a875d2c7232097757e7d04bfc7b3dde8d45d827a8ad5`  
		Last Modified: Wed, 08 May 2019 01:06:13 GMT  
		Size: 10.3 MB (10293410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04087a801070ecfa7b2783044c21dd5b80b9df6827d298dd0e9a18601352959c`  
		Last Modified: Wed, 08 May 2019 01:06:15 GMT  
		Size: 27.5 MB (27512967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efd5395ab3162e793f0d4de4fc1e3ba8399ea2733ec361b2f1f211cae2ef0e4`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5cc03aaac8f0234ee99e80cdcf423f934884ea3259a03a87fe3234a2c9834f`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7adaec9998586dfd508031fd957fc8783e0e5aedf2fd5f89b4aaff09f6764f`  
		Last Modified: Wed, 08 May 2019 01:06:10 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385b8f96a9ba94497a33ec51a459b2c3a38be0b2d2c2d9237128934bfcbdba7d`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:e3a7b2dd5ea78bcdf80ee2846ff5c60dbdd5b07b138a7e0abdeaa3c0f958bbdb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:c9c671d0c959183154313d6830d46f9a00d5937f97415c15ebd3c6844f6f1467
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66072546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d404d78aa797c87c255e5ae2beb5d8d0e4d095f930b1f20dc208eaa957477b74`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:03:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:03:00 GMT
ENV MYSQL_MAJOR=5.5
# Wed, 08 May 2019 01:03:01 GMT
ENV MYSQL_VERSION=5.5.62
# Wed, 08 May 2019 01:05:11 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Wed, 08 May 2019 01:05:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Wed, 08 May 2019 01:05:12 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Wed, 08 May 2019 01:05:12 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Wed, 08 May 2019 01:05:13 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:05:13 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Wed, 08 May 2019 01:05:14 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:05:14 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:05:14 GMT
EXPOSE 3306
# Wed, 08 May 2019 01:05:14 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03da1e065b16051bca91a875d2c7232097757e7d04bfc7b3dde8d45d827a8ad5`  
		Last Modified: Wed, 08 May 2019 01:06:13 GMT  
		Size: 10.3 MB (10293410 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04087a801070ecfa7b2783044c21dd5b80b9df6827d298dd0e9a18601352959c`  
		Last Modified: Wed, 08 May 2019 01:06:15 GMT  
		Size: 27.5 MB (27512967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efd5395ab3162e793f0d4de4fc1e3ba8399ea2733ec361b2f1f211cae2ef0e4`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b5cc03aaac8f0234ee99e80cdcf423f934884ea3259a03a87fe3234a2c9834f`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 178.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7adaec9998586dfd508031fd957fc8783e0e5aedf2fd5f89b4aaff09f6764f`  
		Last Modified: Wed, 08 May 2019 01:06:10 GMT  
		Size: 2.9 KB (2887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:385b8f96a9ba94497a33ec51a459b2c3a38be0b2d2c2d9237128934bfcbdba7d`  
		Last Modified: Wed, 08 May 2019 01:06:09 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:8547945d0e59b747c768e9d2bec3629ee2699837705457c3350709219b8c6ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:c6ac41ce0bc55ed74d7aa678c4894877859041da4213fc97394489c48dcb0c32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82831952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73829d7b6139e7026f9728fda2c893c0c98859d9ed29bf026c2625cd52a09d42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:02:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:02:31 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 08 May 2019 01:02:31 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 08 May 2019 01:02:32 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Wed, 08 May 2019 01:02:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 08 May 2019 01:02:49 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 08 May 2019 01:02:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:02:50 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 08 May 2019 01:02:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:02:51 GMT
EXPOSE 3306
# Wed, 08 May 2019 01:02:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c834d5397c1784a61c64e46f51ad502fdd934c36dc599c3911e77e02e925ca0d`  
		Last Modified: Wed, 08 May 2019 01:05:58 GMT  
		Size: 10.2 MB (10168838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167b4b0bb2132a450ee4bbf8d4737ef636e127ecad86b9fbe92e5b6677509bd2`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 27.0 KB (26954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e13de731ad8063e6b7e56f66b296b4b327793f4c5be2b446a20a537d5549e10`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd497f8ff92f2efe9ea96e10d8586a04632bf592c9172716c6be79845fa3c0`  
		Last Modified: Wed, 08 May 2019 01:06:03 GMT  
		Size: 44.4 MB (44370212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d36065c763f9fd7696a5b4d6cfb9c43290a89e5759c0a4a34d214c94617416`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30363b0dfa6b741e5ec9c71dabd141700d4cca3621d43fdb8378b79e20bdf78`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.44`

```console
$ docker pull mysql@sha256:8547945d0e59b747c768e9d2bec3629ee2699837705457c3350709219b8c6ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.44` - linux; amd64

```console
$ docker pull mysql@sha256:c6ac41ce0bc55ed74d7aa678c4894877859041da4213fc97394489c48dcb0c32
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82831952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73829d7b6139e7026f9728fda2c893c0c98859d9ed29bf026c2625cd52a09d42`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:02:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:02:31 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 08 May 2019 01:02:31 GMT
ENV MYSQL_MAJOR=5.6
# Wed, 08 May 2019 01:02:32 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Wed, 08 May 2019 01:02:32 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 08 May 2019 01:02:49 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 08 May 2019 01:02:50 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:02:50 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Wed, 08 May 2019 01:02:51 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:02:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:02:51 GMT
EXPOSE 3306
# Wed, 08 May 2019 01:02:51 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c834d5397c1784a61c64e46f51ad502fdd934c36dc599c3911e77e02e925ca0d`  
		Last Modified: Wed, 08 May 2019 01:05:58 GMT  
		Size: 10.2 MB (10168838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:167b4b0bb2132a450ee4bbf8d4737ef636e127ecad86b9fbe92e5b6677509bd2`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 27.0 KB (26954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e13de731ad8063e6b7e56f66b296b4b327793f4c5be2b446a20a537d5549e10`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0dcd497f8ff92f2efe9ea96e10d8586a04632bf592c9172716c6be79845fa3c0`  
		Last Modified: Wed, 08 May 2019 01:06:03 GMT  
		Size: 44.4 MB (44370212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d36065c763f9fd7696a5b4d6cfb9c43290a89e5759c0a4a34d214c94617416`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30363b0dfa6b741e5ec9c71dabd141700d4cca3621d43fdb8378b79e20bdf78`  
		Last Modified: Wed, 08 May 2019 01:05:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:204f5c77fe589c202e2ebc8b6b7dcdc442d67c07168916a302ede26b3e9ab168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:78ff5aa8e65b9e99775f24044591533ae5c35a1ae0264e73747b56215f0489ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faa3c53e6d699fe92d49a361e427c3af937c6cea9517f092e8013b1fff1c4d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Wed, 08 May 2019 01:01:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 08 May 2019 01:02:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 08 May 2019 01:02:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:02:17 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 08 May 2019 01:02:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:02:18 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 01:02:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38e9cfd49b5c0f277ac29a73f92a9bbecaa679ad9c16abca567e2ea933a724`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4834b3f44fee072ed7382eab5c373cb7b16893090e331e71bd71b30ea39263`  
		Last Modified: Wed, 08 May 2019 01:05:45 GMT  
		Size: 83.7 MB (83749913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af631d92fdbaf900074b05663becdcc2f08f09e3dcc81d6ad0757df8caa0b486`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e771ddab25c0c6632bf1b303f4de312ff52d55253aa1e50d0a05a00e13e1760`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.26`

```console
$ docker pull mysql@sha256:204f5c77fe589c202e2ebc8b6b7dcdc442d67c07168916a302ede26b3e9ab168
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.26` - linux; amd64

```console
$ docker pull mysql@sha256:78ff5aa8e65b9e99775f24044591533ae5c35a1ae0264e73747b56215f0489ef
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124151205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7faa3c53e6d699fe92d49a361e427c3af937c6cea9517f092e8013b1fff1c4d9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_MAJOR=5.7
# Wed, 08 May 2019 01:01:56 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Wed, 08 May 2019 01:01:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Wed, 08 May 2019 01:02:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 08 May 2019 01:02:17 GMT
VOLUME [/var/lib/mysql]
# Wed, 08 May 2019 01:02:17 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Wed, 08 May 2019 01:02:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Wed, 08 May 2019 01:02:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 08 May 2019 01:02:18 GMT
EXPOSE 3306 33060
# Wed, 08 May 2019 01:02:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f38e9cfd49b5c0f277ac29a73f92a9bbecaa679ad9c16abca567e2ea933a724`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f4834b3f44fee072ed7382eab5c373cb7b16893090e331e71bd71b30ea39263`  
		Last Modified: Wed, 08 May 2019 01:05:45 GMT  
		Size: 83.7 MB (83749913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af631d92fdbaf900074b05663becdcc2f08f09e3dcc81d6ad0757df8caa0b486`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 2.9 KB (2878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e771ddab25c0c6632bf1b303f4de312ff52d55253aa1e50d0a05a00e13e1760`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:95a1d2fd105e3d635a7f7b0f282831a3ce4960bdf0d10085ca3c6a1c538988f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:db1627faa750050845f239a5d848148c9bdacebf83e434b16f5086f83680cd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990386cbd5c04effd6669ab958aa41ce06052bbe52b8d88f259bfadf9fbf37c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Thu, 09 May 2019 22:19:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 09 May 2019 22:20:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 May 2019 22:20:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 May 2019 22:20:04 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 09 May 2019 22:20:04 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 09 May 2019 22:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 May 2019 22:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 22:20:05 GMT
EXPOSE 3306 33060
# Thu, 09 May 2019 22:20:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416ca8f689076987eaa8c827e94f84d609d42c763246d25e1d5a06f6613da61`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786698c2d5deb9a85a877a800b17f79a195073412e22d6adbf5c126370f16b1d`  
		Last Modified: Thu, 09 May 2019 22:20:42 GMT  
		Size: 89.0 MB (88989728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddf84d07bd16d7517dc013d73febe0a76c46ec9f75b9cb3a863fd0aa1aa8f31`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3aa23461b6e88fec32de266e688bbe38084d2dfe009547194560282a2d9e11`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f287a2a95ada6b775fbbb36d860b865597cd839161e09ff768292c4d80d471d`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:95a1d2fd105e3d635a7f7b0f282831a3ce4960bdf0d10085ca3c6a1c538988f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:db1627faa750050845f239a5d848148c9bdacebf83e434b16f5086f83680cd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990386cbd5c04effd6669ab958aa41ce06052bbe52b8d88f259bfadf9fbf37c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Thu, 09 May 2019 22:19:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 09 May 2019 22:20:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 May 2019 22:20:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 May 2019 22:20:04 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 09 May 2019 22:20:04 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 09 May 2019 22:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 May 2019 22:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 22:20:05 GMT
EXPOSE 3306 33060
# Thu, 09 May 2019 22:20:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416ca8f689076987eaa8c827e94f84d609d42c763246d25e1d5a06f6613da61`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786698c2d5deb9a85a877a800b17f79a195073412e22d6adbf5c126370f16b1d`  
		Last Modified: Thu, 09 May 2019 22:20:42 GMT  
		Size: 89.0 MB (88989728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddf84d07bd16d7517dc013d73febe0a76c46ec9f75b9cb3a863fd0aa1aa8f31`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3aa23461b6e88fec32de266e688bbe38084d2dfe009547194560282a2d9e11`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f287a2a95ada6b775fbbb36d860b865597cd839161e09ff768292c4d80d471d`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.16`

```console
$ docker pull mysql@sha256:95a1d2fd105e3d635a7f7b0f282831a3ce4960bdf0d10085ca3c6a1c538988f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.16` - linux; amd64

```console
$ docker pull mysql@sha256:db1627faa750050845f239a5d848148c9bdacebf83e434b16f5086f83680cd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990386cbd5c04effd6669ab958aa41ce06052bbe52b8d88f259bfadf9fbf37c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Thu, 09 May 2019 22:19:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 09 May 2019 22:20:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 May 2019 22:20:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 May 2019 22:20:04 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 09 May 2019 22:20:04 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 09 May 2019 22:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 May 2019 22:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 22:20:05 GMT
EXPOSE 3306 33060
# Thu, 09 May 2019 22:20:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416ca8f689076987eaa8c827e94f84d609d42c763246d25e1d5a06f6613da61`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786698c2d5deb9a85a877a800b17f79a195073412e22d6adbf5c126370f16b1d`  
		Last Modified: Thu, 09 May 2019 22:20:42 GMT  
		Size: 89.0 MB (88989728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddf84d07bd16d7517dc013d73febe0a76c46ec9f75b9cb3a863fd0aa1aa8f31`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3aa23461b6e88fec32de266e688bbe38084d2dfe009547194560282a2d9e11`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f287a2a95ada6b775fbbb36d860b865597cd839161e09ff768292c4d80d471d`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:95a1d2fd105e3d635a7f7b0f282831a3ce4960bdf0d10085ca3c6a1c538988f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:db1627faa750050845f239a5d848148c9bdacebf83e434b16f5086f83680cd36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129391993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:990386cbd5c04effd6669ab958aa41ce06052bbe52b8d88f259bfadf9fbf37c9`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Wed, 08 May 2019 00:33:32 GMT
ADD file:fcb9328ea4c1156709f3d04c3d9a5f3667e77fb36a4a83390ae2495555fc0238 in / 
# Wed, 08 May 2019 00:33:32 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:01:12 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Wed, 08 May 2019 01:01:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:17 GMT
ENV GOSU_VERSION=1.7
# Wed, 08 May 2019 01:01:28 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Wed, 08 May 2019 01:01:29 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Wed, 08 May 2019 01:01:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:01:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 09 May 2019 22:19:46 GMT
ENV MYSQL_VERSION=8.0.16-2debian9
# Thu, 09 May 2019 22:19:47 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 09 May 2019 22:20:03 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 09 May 2019 22:20:04 GMT
VOLUME [/var/lib/mysql]
# Thu, 09 May 2019 22:20:04 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 09 May 2019 22:20:04 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 09 May 2019 22:20:05 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 09 May 2019 22:20:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 09 May 2019 22:20:05 GMT
EXPOSE 3306 33060
# Thu, 09 May 2019 22:20:05 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:743f2d6c1f65c793009f30acb07845ba2ef968192732afdab2ecf9a475515393`  
		Last Modified: Wed, 08 May 2019 00:37:57 GMT  
		Size: 22.5 MB (22489350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0c413ee2552161733ab8268e5b22785b8cb820156c7ab55fa8023bba212897`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.7 KB (1741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aef1ef8f1aacbd1138e184fcfa9f646077ee38646705c8bad11b5dfef6d1a7a2`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 4.5 MB (4501185 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ee573e34cbef998125be0a5d026d6a8c281d63c50df30044ffd1f1f11d75c4`  
		Last Modified: Wed, 08 May 2019 01:05:31 GMT  
		Size: 1.3 MB (1270356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f237e01f153e15edcdf75433ed4889765c2088798320705fc2e6628b8afdfe6`  
		Last Modified: Wed, 08 May 2019 01:05:30 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9da32e8682a23b43292d8b56dc0441b8c62893a3de6290e87380613f32b2621`  
		Last Modified: Wed, 08 May 2019 01:05:36 GMT  
		Size: 12.1 MB (12108371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b8da52fb3579306dbe2a3cf8dd3d8f3d2f0a998c28ae3252803cd25c6063dd0`  
		Last Modified: Wed, 08 May 2019 01:05:29 GMT  
		Size: 27.0 KB (26952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416ca8f689076987eaa8c827e94f84d609d42c763246d25e1d5a06f6613da61`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:786698c2d5deb9a85a877a800b17f79a195073412e22d6adbf5c126370f16b1d`  
		Last Modified: Thu, 09 May 2019 22:20:42 GMT  
		Size: 89.0 MB (88989728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ddf84d07bd16d7517dc013d73febe0a76c46ec9f75b9cb3a863fd0aa1aa8f31`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 897.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3aa23461b6e88fec32de266e688bbe38084d2dfe009547194560282a2d9e11`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 3.0 KB (2952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f287a2a95ada6b775fbbb36d860b865597cd839161e09ff768292c4d80d471d`  
		Last Modified: Thu, 09 May 2019 22:20:24 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
