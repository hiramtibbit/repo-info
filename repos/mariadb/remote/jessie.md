## `mariadb:jessie`

```console
$ docker pull mariadb@sha256:f2085c2176ba6294cf73033b344a420faa2ddae1b97b6795c101552e86284ba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `mariadb:jessie` - linux; amd64

```console
$ docker pull mariadb@sha256:b42dc3b45acbcaf97daa7369e00f4b84f538989050580318bd93ce6451c4d878
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **137.5 MB (137503026 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:520fc647a087d0e055bcf411b8b196de3e31ef78a8596b5b78e078825b2072bb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["mysqld"]`

```dockerfile
# Tue, 26 Jun 2018 21:20:50 GMT
ADD file:d4f4a33443015d350df6f0aa1d8b3491b27b93adabcbfb1b983fc915abc8723b in / 
# Tue, 26 Jun 2018 21:20:51 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:45:56 GMT
RUN groupadd -r mysql && useradd -r -g mysql mysql
# Tue, 26 Jun 2018 22:45:56 GMT
ENV GOSU_VERSION=1.10
# Tue, 26 Jun 2018 22:46:48 GMT
RUN set -ex; 		fetchDeps=' 		ca-certificates 		wget 	'; 	apt-get update; 	apt-get install -y --no-install-recommends $fetchDeps; 	rm -rf /var/lib/apt/lists/*; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc; 		chmod +x /usr/local/bin/gosu; 	gosu nobody true; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 26 Jun 2018 22:46:49 GMT
RUN mkdir /docker-entrypoint-initdb.d
# Tue, 26 Jun 2018 22:47:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		apt-transport-https ca-certificates 		pwgen 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:47:32 GMT
ENV GPG_KEYS=199369E5404BD5FC7D2FE43BCBCB082A1BB943DB 	430BDF5C56E7C94E848EE60C1C4CBDCDCD2EFD2A 	4D1BB29D63D98E422B2113B19334A25F8507EFA5
# Tue, 26 Jun 2018 22:47:41 GMT
RUN set -ex; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$key"; 	done; 	gpg --export $GPG_KEYS > /etc/apt/trusted.gpg.d/mariadb.gpg; 	rm -r "$GNUPGHOME"; 	apt-key list
# Tue, 26 Jun 2018 22:47:42 GMT
RUN echo "deb https://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=Percona Development Team'; 		echo 'Pin-Priority: 998'; 	} > /etc/apt/preferences.d/percona
# Tue, 26 Jun 2018 22:47:42 GMT
ENV MARIADB_MAJOR=10.3
# Wed, 04 Jul 2018 02:19:45 GMT
ENV MARIADB_VERSION=1:10.3.8+maria~jessie
# Wed, 04 Jul 2018 02:19:46 GMT
RUN echo "deb http://ftp.osuosl.org/pub/mariadb/repo/$MARIADB_MAJOR/debian jessie main" > /etc/apt/sources.list.d/mariadb.list 	&& { 		echo 'Package: *'; 		echo 'Pin: release o=MariaDB'; 		echo 'Pin-Priority: 999'; 	} > /etc/apt/preferences.d/mariadb
# Wed, 04 Jul 2018 02:21:07 GMT
RUN { 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password password 'unused'; 		echo "mariadb-server-$MARIADB_MAJOR" mysql-server/root_password_again password 'unused'; 	} | debconf-set-selections 	&& apt-get update 	&& apt-get install -y 		"mariadb-server=$MARIADB_VERSION" 		percona-xtrabackup-24 		socat 	&& rm -rf /var/lib/apt/lists/* 	&& sed -ri 's/^user\s/#&/' /etc/mysql/my.cnf /etc/mysql/conf.d/* 	&& rm -rf /var/lib/mysql && mkdir -p /var/lib/mysql /var/run/mysqld 	&& chown -R mysql:mysql /var/lib/mysql /var/run/mysqld 	&& chmod 777 /var/run/mysqld 	&& find /etc/mysql/ -name '*.cnf' -print0 		| xargs -0 grep -lZE '^(bind-address|log)' 		| xargs -rt -0 sed -Ei 's/^(bind-address|log)/#&/' 	&& echo '[mysqld]\nskip-host-cache\nskip-name-resolve' > /etc/mysql/conf.d/docker.cnf
# Wed, 04 Jul 2018 02:21:09 GMT
VOLUME [/var/lib/mysql]
# Wed, 04 Jul 2018 02:21:10 GMT
COPY file:f73461a79523c32707442c61588726e0c8a32ac13d151b97d567cd38bf7443d4 in /usr/local/bin/ 
# Wed, 04 Jul 2018 02:21:11 GMT
RUN ln -s usr/local/bin/docker-entrypoint.sh / # backwards compat
# Wed, 04 Jul 2018 02:21:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Jul 2018 02:21:11 GMT
EXPOSE 3306/tcp
# Wed, 04 Jul 2018 02:21:11 GMT
CMD ["mysqld"]
```

-	Layers:
	-	`sha256:1c7fe136a31e13a1c879245672184ced3b9fc590989ba42a522a57b071a9c1aa`  
		Last Modified: Tue, 26 Jun 2018 21:29:49 GMT  
		Size: 54.3 MB (54252035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecb0394ab02fb9c34a789ca18d3ae17fa02271cd0e9dffbb53447996726e8605`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 2.1 KB (2087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ece3821473b49a37a767138125f62525bc3ca59a7d5143242878b4b1abaff984`  
		Last Modified: Tue, 26 Jun 2018 22:56:03 GMT  
		Size: 988.8 KB (988824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b090b58fe85128da20b932bd029a368b8b825216ff45fbbc3aae56c204ec89c1`  
		Last Modified: Tue, 26 Jun 2018 22:56:02 GMT  
		Size: 115.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdc67e5246f13a7613d043aa9589fa0fd8f3362aa5da49267aab177218502814`  
		Last Modified: Tue, 26 Jun 2018 22:56:04 GMT  
		Size: 5.0 MB (5010668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0408b2b91f5f44cc6a14f2d1832936cc3f14830616c26fbebf81095ecb4edc`  
		Last Modified: Tue, 26 Jun 2018 22:56:00 GMT  
		Size: 20.8 KB (20830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02c7ce6b6eeac42d1dce89f450e013c8f91bc7941bebc5a99e8d310926dc8b79`  
		Last Modified: Tue, 26 Jun 2018 22:55:58 GMT  
		Size: 315.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb3d50d2d52c0456076b5d0f32af86aaa01354542a261fe2876c753a470c526d`  
		Last Modified: Wed, 04 Jul 2018 02:21:44 GMT  
		Size: 325.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:800dafb39329f93cc7f4df34e91c8730390aaafe4c87bdbb8fc99b9d4e1966fd`  
		Last Modified: Wed, 04 Jul 2018 02:22:14 GMT  
		Size: 77.2 MB (77225108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98513c56899a9294c3383db3e39d7b952bdcd307acc1029673816d455f8c7b3`  
		Last Modified: Wed, 04 Jul 2018 02:21:45 GMT  
		Size: 2.6 KB (2598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7407e397090b93e254b850817c6a0be64cad39890692e23e460ba0905792b8a`  
		Last Modified: Wed, 04 Jul 2018 02:21:45 GMT  
		Size: 121.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
