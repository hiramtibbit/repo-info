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
$ docker pull mysql@sha256:069c2bc62a2b1f84827b96c36870c45be5458f1438c27a41535ba5197aa2e26c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5` - linux; amd64

```console
$ docker pull mysql@sha256:c7b264f4d61c1efdc3265299083cd6516c9ff45448766c766393065d4dc5d4f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124157336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f52e94d8acb298ab689e99fa39a141ffb34a602537d5e6fc91f0c3492541e18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:42:09 GMT
ENV MYSQL_MAJOR=5.7
# Thu, 25 Apr 2019 00:23:23 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Thu, 25 Apr 2019 00:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 25 Apr 2019 00:23:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:44 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:49 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1430d39d4fa023502550251180bee1fbd32e808ececc7f7576305900f6f7b4`  
		Last Modified: Thu, 25 Apr 2019 00:25:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc64c824b3fb9e138d6e88468c1ec24bd35088343b3ad1d180ded76368a2e8f`  
		Last Modified: Thu, 25 Apr 2019 00:25:15 GMT  
		Size: 83.7 MB (83749910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ec62ca852186acab87123787a16f1c1c5436a4f7848a1b9830ef109f77e2e`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 2.9 KB (2879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42323e351ef30d83fb8a5802d19ee3fce69daf51fa410b3a0567e90e2b7aed8c`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5`

```console
$ docker pull mysql@sha256:c641029f46e828b8bedcd0254d5af2216f2fef8b128dfb80ec46bde29666de46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5` - linux; amd64

```console
$ docker pull mysql@sha256:03df4ea8ef0fd6b025fca37111e7417bead41570f59915b6d9a1171ba25f4281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66079048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee01d11a48b4490923f4dbebabe434fc56e9da6fde75cd151889d5c419c602e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:43:38 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 26 Mar 2019 23:43:38 GMT
ENV MYSQL_VERSION=5.5.62
# Tue, 26 Mar 2019 23:46:04 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 26 Mar 2019 23:46:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 26 Mar 2019 23:46:06 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 26 Mar 2019 23:46:08 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Mar 2019 23:46:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Mar 2019 23:46:09 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:46:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:46:11 GMT
EXPOSE 3306
# Tue, 26 Mar 2019 23:46:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73866f3eb1db4ba3f68fee15d86c3fc03ade728db45828de078b2ffc5bd6dcc`  
		Last Modified: Tue, 26 Mar 2019 23:47:29 GMT  
		Size: 10.3 MB (10293363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5236d50f0d4126f1f14796701134293b2d8b7dd1620ccd9d20e91184b14e4ea`  
		Last Modified: Tue, 26 Mar 2019 23:47:31 GMT  
		Size: 27.5 MB (27512908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a6f794c53f65dccc64d74875015294d47d53f84489e8f8392af1adfc8445b5`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f55cba6cfa5994135b05e51196e90de522b602dfe96fd37ca9cf21e29e461`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a97f606b8622681fdbccb80f426a79096f4774faed5b3adfb071b7bd23ff1`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dc38ea6d3db685d73bfcedd4de275ad0fdd6806bcd5bf33a95d7cec6ad3a73`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.5.62`

```console
$ docker pull mysql@sha256:c641029f46e828b8bedcd0254d5af2216f2fef8b128dfb80ec46bde29666de46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.5.62` - linux; amd64

```console
$ docker pull mysql@sha256:03df4ea8ef0fd6b025fca37111e7417bead41570f59915b6d9a1171ba25f4281
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66079048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ee01d11a48b4490923f4dbebabe434fc56e9da6fde75cd151889d5c419c602e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 		libaio1 		libncurses5 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:43:38 GMT
ENV MYSQL_MAJOR=5.5
# Tue, 26 Mar 2019 23:43:38 GMT
ENV MYSQL_VERSION=5.5.62
# Tue, 26 Mar 2019 23:46:04 GMT
RUN apt-get update && apt-get install -y ca-certificates wget --no-install-recommends && rm -rf /var/lib/apt/lists/* 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz" -O mysql.tar.gz 	&& wget "https://cdn.mysql.com/Downloads/MySQL-$MYSQL_MAJOR/mysql-$MYSQL_VERSION-linux-glibc2.12-x86_64.tar.gz.asc" -O mysql.tar.gz.asc 	&& apt-get purge -y --auto-remove ca-certificates wget 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys A4A9406876FCBD3C456770C88C718D3B5072E1F5 	&& gpg --batch --verify mysql.tar.gz.asc mysql.tar.gz 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" mysql.tar.gz.asc 	&& mkdir /usr/local/mysql 	&& tar -xzf mysql.tar.gz -C /usr/local/mysql --strip-components=1 	&& rm mysql.tar.gz 	&& rm -rf /usr/local/mysql/mysql-test /usr/local/mysql/sql-bench 	&& rm -rf /usr/local/mysql/bin/*-debug /usr/local/mysql/bin/*_embedded 	&& find /usr/local/mysql -type f -name "*.a" -delete 	&& apt-get update && apt-get install -y binutils && rm -rf /var/lib/apt/lists/* 	&& { find /usr/local/mysql -type f -executable -exec strip --strip-all '{}' + || true; } 	&& apt-get purge -y --auto-remove binutils
# Tue, 26 Mar 2019 23:46:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/mysql/bin:/usr/local/mysql/scripts
# Tue, 26 Mar 2019 23:46:06 GMT
RUN mkdir -p /etc/mysql/conf.d 	&& { 		echo '[mysqld]'; 		echo 'skip-host-cache'; 		echo 'skip-name-resolve'; 		echo 'datadir = /var/lib/mysql'; 		echo '!includedir /etc/mysql/conf.d/'; 	} > /etc/mysql/my.cnf
# Tue, 26 Mar 2019 23:46:08 GMT
RUN mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Mar 2019 23:46:08 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Mar 2019 23:46:09 GMT
COPY file:a8df093ababc5eebd6455cf3067c2e6c6a5aae95f1c69913281a6dddadabd88a in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:46:10 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:46:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:46:11 GMT
EXPOSE 3306
# Tue, 26 Mar 2019 23:46:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a73866f3eb1db4ba3f68fee15d86c3fc03ade728db45828de078b2ffc5bd6dcc`  
		Last Modified: Tue, 26 Mar 2019 23:47:29 GMT  
		Size: 10.3 MB (10293363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5236d50f0d4126f1f14796701134293b2d8b7dd1620ccd9d20e91184b14e4ea`  
		Last Modified: Tue, 26 Mar 2019 23:47:31 GMT  
		Size: 27.5 MB (27512908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a6f794c53f65dccc64d74875015294d47d53f84489e8f8392af1adfc8445b5`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 237.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271f55cba6cfa5994135b05e51196e90de522b602dfe96fd37ca9cf21e29e461`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e7a97f606b8622681fdbccb80f426a79096f4774faed5b3adfb071b7bd23ff1`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 2.9 KB (2884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7dc38ea6d3db685d73bfcedd4de275ad0fdd6806bcd5bf33a95d7cec6ad3a73`  
		Last Modified: Tue, 26 Mar 2019 23:47:26 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6`

```console
$ docker pull mysql@sha256:3b9221e02bd40de78b6a0399a49069001dd6ee0a67ed7e739691bf90e831c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6` - linux; amd64

```console
$ docker pull mysql@sha256:52d20248318227c78e9aa963da70c600bc76c5633c2b5fe7dbb34cdb150232b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82837611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6527af4ce6911c4eb6b240c1add9bbabecbcc66f1d9610ca04d47e8c0ee8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:42:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:42:58 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:42:59 GMT
ENV MYSQL_MAJOR=5.6
# Thu, 25 Apr 2019 00:23:55 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Thu, 25 Apr 2019 00:23:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:24:16 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 25 Apr 2019 00:24:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:24:17 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:24:18 GMT
EXPOSE 3306
# Thu, 25 Apr 2019 00:24:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688342d0934f8e0ceaf1e39bbf510ea4bf05e0a76ffa46ef71fc25ff2aff3461`  
		Last Modified: Tue, 26 Mar 2019 23:47:16 GMT  
		Size: 10.2 MB (10168789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90d01880662732cc3ac231648f3bb4b585747328549cf1927380e2be8f57f9`  
		Last Modified: Tue, 26 Mar 2019 23:47:12 GMT  
		Size: 26.1 KB (26081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a4df0551453b723b2225960fd27b8c5eb7974eadba8f755f32b64508d4ff22`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457516b0c8d30f4391bd86d43eb088cf9d253c3c1594d461659d70286a0af7a1`  
		Last Modified: Thu, 25 Apr 2019 00:25:31 GMT  
		Size: 44.4 MB (44370178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4632d56795a7e701683f54ca0d66ba3b280c8b7e2ab8df5da6b90adc76f5a06`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0295e89094590c97486c28a0e3eb904b58293c01bb5e4c105269b7c1eb518e3e`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.6.44`

```console
$ docker pull mysql@sha256:3b9221e02bd40de78b6a0399a49069001dd6ee0a67ed7e739691bf90e831c603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.6.44` - linux; amd64

```console
$ docker pull mysql@sha256:52d20248318227c78e9aa963da70c600bc76c5633c2b5fe7dbb34cdb150232b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.8 MB (82837611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf6527af4ce6911c4eb6b240c1add9bbabecbcc66f1d9610ca04d47e8c0ee8a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:42:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:42:58 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:42:59 GMT
ENV MYSQL_MAJOR=5.6
# Thu, 25 Apr 2019 00:23:55 GMT
ENV MYSQL_VERSION=5.6.44-1debian9
# Thu, 25 Apr 2019 00:23:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:24:16 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 25 Apr 2019 00:24:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:24:17 GMT
COPY file:9db0d75a8e0e8b283795127306781433510d4b8cc1490431021784417fba8d1d in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:24:18 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:24:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:24:18 GMT
EXPOSE 3306
# Thu, 25 Apr 2019 00:24:18 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:688342d0934f8e0ceaf1e39bbf510ea4bf05e0a76ffa46ef71fc25ff2aff3461`  
		Last Modified: Tue, 26 Mar 2019 23:47:16 GMT  
		Size: 10.2 MB (10168789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f90d01880662732cc3ac231648f3bb4b585747328549cf1927380e2be8f57f9`  
		Last Modified: Tue, 26 Mar 2019 23:47:12 GMT  
		Size: 26.1 KB (26081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1a4df0551453b723b2225960fd27b8c5eb7974eadba8f755f32b64508d4ff22`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:457516b0c8d30f4391bd86d43eb088cf9d253c3c1594d461659d70286a0af7a1`  
		Last Modified: Thu, 25 Apr 2019 00:25:31 GMT  
		Size: 44.4 MB (44370178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4632d56795a7e701683f54ca0d66ba3b280c8b7e2ab8df5da6b90adc76f5a06`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 2.9 KB (2858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0295e89094590c97486c28a0e3eb904b58293c01bb5e4c105269b7c1eb518e3e`  
		Last Modified: Thu, 25 Apr 2019 00:25:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7`

```console
$ docker pull mysql@sha256:069c2bc62a2b1f84827b96c36870c45be5458f1438c27a41535ba5197aa2e26c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7` - linux; amd64

```console
$ docker pull mysql@sha256:c7b264f4d61c1efdc3265299083cd6516c9ff45448766c766393065d4dc5d4f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124157336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f52e94d8acb298ab689e99fa39a141ffb34a602537d5e6fc91f0c3492541e18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:42:09 GMT
ENV MYSQL_MAJOR=5.7
# Thu, 25 Apr 2019 00:23:23 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Thu, 25 Apr 2019 00:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 25 Apr 2019 00:23:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:44 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:49 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1430d39d4fa023502550251180bee1fbd32e808ececc7f7576305900f6f7b4`  
		Last Modified: Thu, 25 Apr 2019 00:25:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc64c824b3fb9e138d6e88468c1ec24bd35088343b3ad1d180ded76368a2e8f`  
		Last Modified: Thu, 25 Apr 2019 00:25:15 GMT  
		Size: 83.7 MB (83749910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ec62ca852186acab87123787a16f1c1c5436a4f7848a1b9830ef109f77e2e`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 2.9 KB (2879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42323e351ef30d83fb8a5802d19ee3fce69daf51fa410b3a0567e90e2b7aed8c`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:5.7.26`

```console
$ docker pull mysql@sha256:069c2bc62a2b1f84827b96c36870c45be5458f1438c27a41535ba5197aa2e26c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:5.7.26` - linux; amd64

```console
$ docker pull mysql@sha256:c7b264f4d61c1efdc3265299083cd6516c9ff45448766c766393065d4dc5d4f4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.2 MB (124157336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f52e94d8acb298ab689e99fa39a141ffb34a602537d5e6fc91f0c3492541e18`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:42:09 GMT
ENV MYSQL_MAJOR=5.7
# Thu, 25 Apr 2019 00:23:23 GMT
ENV MYSQL_VERSION=5.7.26-1debian9
# Thu, 25 Apr 2019 00:23:24 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:43 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-server="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Thu, 25 Apr 2019 00:23:44 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:44 GMT
COPY file:aa86b132b6a63ce8f2df8c8d76b662672060962e3252d6c86dcec28ce598e256 in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:47 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:49 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:49 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f1430d39d4fa023502550251180bee1fbd32e808ececc7f7576305900f6f7b4`  
		Last Modified: Thu, 25 Apr 2019 00:25:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bc64c824b3fb9e138d6e88468c1ec24bd35088343b3ad1d180ded76368a2e8f`  
		Last Modified: Thu, 25 Apr 2019 00:25:15 GMT  
		Size: 83.7 MB (83749910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b64ec62ca852186acab87123787a16f1c1c5436a4f7848a1b9830ef109f77e2e`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 2.9 KB (2879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42323e351ef30d83fb8a5802d19ee3fce69daf51fa410b3a0567e90e2b7aed8c`  
		Last Modified: Thu, 25 Apr 2019 00:25:00 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8`

```console
$ docker pull mysql@sha256:f5f78fe2054b4686da3fddb460eab0b53d04e067c977d6a02fcb5ec25375ed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8` - linux; amd64

```console
$ docker pull mysql@sha256:2e436df90deb54e4b76b58507a7e11d880e2308506294834403146ef59aa9847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129398266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72169616e20dc86bbf814d01652003a53388d2151d8bb0060a08696036ca34d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:41:40 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 25 Apr 2019 00:22:56 GMT
ENV MYSQL_VERSION=8.0.16-1debian9
# Thu, 25 Apr 2019 00:22:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 25 Apr 2019 00:23:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:18 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 25 Apr 2019 00:23:18 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:19 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9667974ee097008d1cc0473507e51f8186f1d2fb32c913d94848f9fcbfe5b2a7`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebb5e7ad6ac739b0457381dabae8d7db6f8f8b4750f9140891d91bbc9433b3f`  
		Last Modified: Thu, 25 Apr 2019 00:24:53 GMT  
		Size: 89.0 MB (88989878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021bd5074e2295bfab85a7cc5164bdbb783e71a8c51cea4112a156cb608d78b6`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce70737c123dc13c37726dce85922db955e02358c0ac34819acf6ae0259e47c`  
		Last Modified: Thu, 25 Apr 2019 00:24:32 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ff12e028f960af37a0643ec350f1ec0bba2b2d7913c48567ecdd14d56e3cd`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0`

```console
$ docker pull mysql@sha256:f5f78fe2054b4686da3fddb460eab0b53d04e067c977d6a02fcb5ec25375ed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0` - linux; amd64

```console
$ docker pull mysql@sha256:2e436df90deb54e4b76b58507a7e11d880e2308506294834403146ef59aa9847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129398266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72169616e20dc86bbf814d01652003a53388d2151d8bb0060a08696036ca34d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:41:40 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 25 Apr 2019 00:22:56 GMT
ENV MYSQL_VERSION=8.0.16-1debian9
# Thu, 25 Apr 2019 00:22:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 25 Apr 2019 00:23:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:18 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 25 Apr 2019 00:23:18 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:19 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9667974ee097008d1cc0473507e51f8186f1d2fb32c913d94848f9fcbfe5b2a7`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebb5e7ad6ac739b0457381dabae8d7db6f8f8b4750f9140891d91bbc9433b3f`  
		Last Modified: Thu, 25 Apr 2019 00:24:53 GMT  
		Size: 89.0 MB (88989878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021bd5074e2295bfab85a7cc5164bdbb783e71a8c51cea4112a156cb608d78b6`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce70737c123dc13c37726dce85922db955e02358c0ac34819acf6ae0259e47c`  
		Last Modified: Thu, 25 Apr 2019 00:24:32 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ff12e028f960af37a0643ec350f1ec0bba2b2d7913c48567ecdd14d56e3cd`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:8.0.16`

```console
$ docker pull mysql@sha256:f5f78fe2054b4686da3fddb460eab0b53d04e067c977d6a02fcb5ec25375ed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:8.0.16` - linux; amd64

```console
$ docker pull mysql@sha256:2e436df90deb54e4b76b58507a7e11d880e2308506294834403146ef59aa9847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129398266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72169616e20dc86bbf814d01652003a53388d2151d8bb0060a08696036ca34d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:41:40 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 25 Apr 2019 00:22:56 GMT
ENV MYSQL_VERSION=8.0.16-1debian9
# Thu, 25 Apr 2019 00:22:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 25 Apr 2019 00:23:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:18 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 25 Apr 2019 00:23:18 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:19 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9667974ee097008d1cc0473507e51f8186f1d2fb32c913d94848f9fcbfe5b2a7`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebb5e7ad6ac739b0457381dabae8d7db6f8f8b4750f9140891d91bbc9433b3f`  
		Last Modified: Thu, 25 Apr 2019 00:24:53 GMT  
		Size: 89.0 MB (88989878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021bd5074e2295bfab85a7cc5164bdbb783e71a8c51cea4112a156cb608d78b6`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce70737c123dc13c37726dce85922db955e02358c0ac34819acf6ae0259e47c`  
		Last Modified: Thu, 25 Apr 2019 00:24:32 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ff12e028f960af37a0643ec350f1ec0bba2b2d7913c48567ecdd14d56e3cd`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `mysql:latest`

```console
$ docker pull mysql@sha256:f5f78fe2054b4686da3fddb460eab0b53d04e067c977d6a02fcb5ec25375ed15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:2e436df90deb54e4b76b58507a7e11d880e2308506294834403146ef59aa9847
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.4 MB (129398266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d72169616e20dc86bbf814d01652003a53388d2151d8bb0060a08696036ca34d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Mar 2019 22:41:26 GMT
ADD file:4fc310c0cb879c876c5c0f571af665a0d24d36cb9263e0f53b0cda2f7e4b1844 in / 
# Tue, 26 Mar 2019 22:41:26 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:41:08 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Mar 2019 23:41:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends gnupg dirmngr && rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:16 GMT
ENV GOSU_VERSION=1.7
# Tue, 26 Mar 2019 23:41:27 GMT
RUN set -x 	&& apt-get update && apt-get install -y --no-install-recommends ca-certificates wget && rm -rf /var/lib/apt/lists/* 	&& wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture)" 	&& wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$(dpkg --print-architecture).asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4 	&& gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu 	&& gpgconf --kill all 	&& rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc 	&& chmod +x /usr/local/bin/gosu 	&& gosu nobody true 	&& apt-get purge -y --auto-remove ca-certificates wget
# Tue, 26 Mar 2019 23:41:28 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Mar 2019 23:41:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		pwgen 		openssl 		perl 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:41:39 GMT
RUN set -ex; 	key='A4A9406876FCBD3C456770C88C718D3B5072E1F5'; 	export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	gpg --batch --export "$key" > /etc/apt/trusted.gpg.d/mysql.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 	apt-key list > /dev/null
# Tue, 26 Mar 2019 23:41:40 GMT
ENV MYSQL_MAJOR=8.0
# Thu, 25 Apr 2019 00:22:56 GMT
ENV MYSQL_VERSION=8.0.16-1debian9
# Thu, 25 Apr 2019 00:22:56 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Thu, 25 Apr 2019 00:23:17 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Thu, 25 Apr 2019 00:23:17 GMT
VOLUME [/var/lib/mysql]
# Thu, 25 Apr 2019 00:23:18 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Thu, 25 Apr 2019 00:23:18 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Thu, 25 Apr 2019 00:23:19 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Thu, 25 Apr 2019 00:23:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 25 Apr 2019 00:23:19 GMT
EXPOSE 3306 33060
# Thu, 25 Apr 2019 00:23:19 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:27833a3ba0a545deda33bb01eaf95a14d05d43bf30bce9267d92d17f069fe897`  
		Last Modified: Tue, 26 Mar 2019 22:44:37 GMT  
		Size: 22.5 MB (22496048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:864c283b3c4b58961fdf887856867c24700693e7555a3a020e1992c6e029023f`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 1.7 KB (1739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cea281b2278b202d4fd44dc7222f05fdeb186fa034bad0832ab8883d09161794`  
		Last Modified: Tue, 26 Mar 2019 23:46:24 GMT  
		Size: 4.5 MB (4501123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f856c14f5af658776d95c68474536c000309aebfb011137024818fda95660b5`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 1.3 MB (1270334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c4f38c23b6fecb377135b2caa1b932c328d3e78aa1529fd34e4816fffdd9130`  
		Last Modified: Tue, 26 Mar 2019 23:46:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b810e1751b3067ff7e263d8193dcdad3c7602b78fad55e9949462718b61fe13`  
		Last Modified: Tue, 26 Mar 2019 23:46:27 GMT  
		Size: 12.1 MB (12108762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5479aaef3d30bebedd2cb6682949a950f2d4df56c92b7c037e40eeb6dbec98b1`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 26.1 KB (26079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9667974ee097008d1cc0473507e51f8186f1d2fb32c913d94848f9fcbfe5b2a7`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ebb5e7ad6ac739b0457381dabae8d7db6f8f8b4750f9140891d91bbc9433b3f`  
		Last Modified: Thu, 25 Apr 2019 00:24:53 GMT  
		Size: 89.0 MB (88989878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:021bd5074e2295bfab85a7cc5164bdbb783e71a8c51cea4112a156cb608d78b6`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 895.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cce70737c123dc13c37726dce85922db955e02358c0ac34819acf6ae0259e47c`  
		Last Modified: Thu, 25 Apr 2019 00:24:32 GMT  
		Size: 3.0 KB (2950 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544ff12e028f960af37a0643ec350f1ec0bba2b2d7913c48567ecdd14d56e3cd`  
		Last Modified: Thu, 25 Apr 2019 00:24:33 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
