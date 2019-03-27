## `mysql:latest`

```console
$ docker pull mysql@sha256:a7cf659a764732a27963429a87eccc8457e6d4af0ee9d5140a3b56e74986eed7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mysql:latest` - linux; amd64

```console
$ docker pull mysql@sha256:f2dc118ca6fa4c88cde5889808c486dfe94bccecd01ca626b002a010bb66bcbe
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **136.0 MB (136049369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bb2586065cd50457e315a5dab0732a87c45c5fad619c017732f5a13e58b51dd`
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
# Tue, 26 Mar 2019 23:41:40 GMT
ENV MYSQL_VERSION=8.0.15-1debian9
# Tue, 26 Mar 2019 23:41:42 GMT
RUN echo "deb http://repo.mysql.com/apt/debian/ stretch mysql-${MYSQL_MAJOR}" > /etc/apt/sources.list.d/mysql.list
# Tue, 26 Mar 2019 23:41:59 GMT
RUN { 		echo mysql-community-server mysql-community-server/data-dir select ''; 		echo mysql-community-server mysql-community-server/root-pass password ''; 		echo mysql-community-server mysql-community-server/re-root-pass password ''; 		echo mysql-community-server mysql-community-server/remove-test-db select false; 	} | debconf-set-selections 	&& apt-get update && apt-get install -y mysql-community-client="${MYSQL_VERSION}" mysql-community-server-core="${MYSQL_VERSION}" && rm -rf /var/lib/apt/lists/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld
# Tue, 26 Mar 2019 23:41:59 GMT
VOLUME [/var/lib/mysql]
# Tue, 26 Mar 2019 23:42:00 GMT
COPY dir:478f098f3681084f7493af1f04cbcd3eeda6f10e0dd2f5c740acd25328a73455 in /etc/mysql/ 
# Tue, 26 Mar 2019 23:42:01 GMT
COPY file:1667e4be6bef3129c148d76d3dfaa3b69709812c59f32fc0181850a2e204f1bb in /usr/local/bin/ 
# Tue, 26 Mar 2019 23:42:02 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh /entrypoint.sh # backwards compat
# Tue, 26 Mar 2019 23:42:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 26 Mar 2019 23:42:03 GMT
EXPOSE 3306 33060
# Tue, 26 Mar 2019 23:42:03 GMT
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
	-	`sha256:ded8fa2e1614ab38301b517c68e79e309f3204b55b026943e66718e2ae80a1d9`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:636033ba4d2e4aad98c13a4b71c383a0e2cc82224c9e871dd0f8ff97751b4ea1`  
		Last Modified: Tue, 26 Mar 2019 23:46:42 GMT  
		Size: 95.6 MB (95640979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902e6010661d9180f8ba3c29f374fcda131eccf43b595063959b15efbf163ca7`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 899.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe44d2bf055d52203a2d20cf16af6ae9449dd07b523b93987b248ea2e8fc1ec`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 2.9 KB (2949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e906385f419daeb38f3b05a470c27f201a45f14a9c8805a8a99a35eb9e27c23c`  
		Last Modified: Tue, 26 Mar 2019 23:46:22 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
