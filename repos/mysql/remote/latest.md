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
