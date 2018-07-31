## `mysql:latest`

```console
$ docker pull mysql@sha256:359aae7806f177d819f6611ee379ae4efbfcd0bc381d2141ad0bc23a38ccf049
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:e228060a0317d6a056719d96db096c884009a676c7291de70318374860418cab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.1 MB (127127929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3da0f4853002c2751ba0c3a92edf42b3f4342bea58a8319dba8b12935e7b41dd`
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
# Tue, 31 Jul 2018 16:56:37 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client-core="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 31 Jul 2018 16:56:38 GMT
VOLUME [/var/lib/mysql]
# Tue, 31 Jul 2018 16:56:38 GMT
COPY dir:110dcf1221c1f9432c68c32a2465ef0b40994f401d5fae0b0de80025bcf839a5 in /etc/mysql/ 
# Tue, 31 Jul 2018 16:56:39 GMT
COPY file:59647006b032bcb29e59fba419c45f9d14154b34df99013c41321e204048254c in /usr/local/bin/ 
# Tue, 31 Jul 2018 16:56:40 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 31 Jul 2018 16:56:40 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 31 Jul 2018 16:56:41 GMT
EXPOSE 3306/tcp
# Tue, 31 Jul 2018 16:56:41 GMT
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
	-	`sha256:e93b1a3a78832f88646d765ae2f082bd5909b6d05cf20348e430c98e0b4f5986`  
		Last Modified: Tue, 31 Jul 2018 17:01:29 GMT  
		Size: 86.8 MB (86754071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2fe83c975e6ad27a39e59041e4bdc5477152b7eeed5900a006d30aee450ad92`  
		Last Modified: Tue, 31 Jul 2018 17:00:54 GMT  
		Size: 893.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbae693ec58a62c897ab1d3ee8b437ea13f1a644c9d6d8947107c94f6d05588`  
		Last Modified: Tue, 31 Jul 2018 17:00:54 GMT  
		Size: 2.9 KB (2945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8946842549c81735423ea9d39e639baeccbefe27aef69e223610f79e4c78a896`  
		Last Modified: Tue, 31 Jul 2018 17:00:54 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
